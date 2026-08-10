import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_highlight/flutter_highlight.dart';
import 'package:flutter_highlight/themes/monokai-sublime.dart';

class CodeEditorScreen extends StatefulWidget {
  const CodeEditorScreen({super.key});

  @override
  State<CodeEditorScreen> createState() => _CodeEditorScreenState();
}

class _CodeEditorScreenState extends State<CodeEditorScreen> {
  final List<_EditorTab> _tabs = [];
  int _activeTab = 0;
  bool _showSearch = false;
  final TextEditingController _searchCtrl = TextEditingController();
  final TextEditingController _replaceCtrl = TextEditingController();

  void _newTab({String? path, String? content}) {
    setState(() {
      _tabs.add(_EditorTab(
        path: path ?? 'novo_arquivo.dart',
        content: content ?? '',
        controller: TextEditingController(text: content ?? ''),
        modified: false,
      ));
      _activeTab = _tabs.length - 1;
    });
  }

  void _closeTab(int i) {
    setState(() {
      _tabs.removeAt(i);
      if (_activeTab >= _tabs.length) _activeTab = _tabs.length - 1;
    });
  }

  Future<void> _saveTab() async {
    if (_tabs.isEmpty) return;
    final tab = _tabs[_activeTab];
    try {
      File(tab.path).writeAsStringSync(tab.controller.text);
      setState(() => _tabs[_activeTab].modified = false);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Salvo'), backgroundColor: Color(0xFF1A2A1A)),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Erro: $e'), backgroundColor: Colors.red),
      );
    }
  }

  void _doSearch() {
    // busca simples — destaque no texto
  }

  void _doReplace() {
    if (_tabs.isEmpty) return;
    final tab = _tabs[_activeTab];
    final newText = tab.controller.text.replaceAll(
      _searchCtrl.text,
      _replaceCtrl.text,
    );
    tab.controller.text = newText;
    setState(() => tab.modified = true);
  }

  String _lang(String path) {
    if (path.endsWith('.dart')) return 'dart';
    if (path.endsWith('.yaml') || path.endsWith('.yml')) return 'yaml';
    if (path.endsWith('.json')) return 'json';
    if (path.endsWith('.md')) return 'markdown';
    if (path.endsWith('.js')) return 'javascript';
    if (path.endsWith('.py')) return 'python';
    if (path.endsWith('.kt')) return 'kotlin';
    if (path.endsWith('.xml')) return 'xml';
    if (path.endsWith('.html')) return 'html';
    if (path.endsWith('.css')) return 'css';
    return 'plaintext';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Barra de abas
        Container(
          height: 36,
          color: const Color(0xFF0A0A0A),
          child: Row(
            children: [
              Expanded(
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: _tabs.length,
                  itemBuilder: (_, i) {
                    final tab = _tabs[i];
                    final active = i == _activeTab;
                    return GestureDetector(
                      onTap: () => setState(() => _activeTab = i),
                      child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: active ? const Color(0xFF1A1A1A) : Colors.transparent,
                          border: Border(
                            top: BorderSide(
                              color: active ? const Color(0xFF00FF88) : Colors.transparent,
                              width: 2,
                            ),
                            right: const BorderSide(color: Color(0xFF222222), width: 0.5),
                          ),
                        ),
                        child: Row(
                          children: [
                            Text(
                              '${tab.modified ? "●" : ""} ${tab.path.split('/').last}',
                              style: TextStyle(
                                color: active ? const Color(0xFF00FF88) : const Color(0xFF555555),
                                fontSize: 10,
                              ),
                            ),
                            const SizedBox(width: 4),
                            GestureDetector(
                              onTap: () => _closeTab(i),
                              child: const Icon(Icons.close, size: 10, color: Color(0xFF444444)),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              GestureDetector(
                onTap: () => _newTab(),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Icon(Icons.add, size: 16, color: Color(0xFF444444)),
                ),
              ),
            ],
          ),
        ),
        // Toolbar do editor
        Container(
          height: 32,
          color: const Color(0xFF0D0D0D),
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            children: [
              _eBtn(Icons.save, _saveTab),
              _eBtn(Icons.search, () => setState(() => _showSearch = !_showSearch)),
              const Spacer(),
              if (_tabs.isNotEmpty)
                Text(
                  _lang(_tabs[_activeTab].path).toUpperCase(),
                  style: const TextStyle(color: Color(0xFF444444), fontSize: 9),
                ),
            ],
          ),
        ),
        // Barra busca/substituição
        if (_showSearch)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            color: const Color(0xFF111111),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchCtrl,
                    style: const TextStyle(color: Colors.white, fontSize: 11),
                    decoration: const InputDecoration(
                      hintText: 'Buscar',
                      hintStyle: TextStyle(color: Color(0xFF444444), fontSize: 11),
                      isDense: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                Expanded(
                  child: TextField(
                    controller: _replaceCtrl,
                    style: const TextStyle(color: Colors.white, fontSize: 11),
                    decoration: const InputDecoration(
                      hintText: 'Substituir',
                      hintStyle: TextStyle(color: Color(0xFF444444), fontSize: 11),
                      isDense: true,
                      border: InputBorder.none,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: _doReplace,
                  child: const Icon(Icons.find_replace, size: 16, color: Color(0xFF00CCFF)),
                ),
              ],
            ),
          ),
        // Área de edição
        Expanded(
          child: _tabs.isEmpty
              ? Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(Icons.edit, size: 40, color: Color(0xFF222222)),
                      const SizedBox(height: 12),
                      const Text('Nenhum arquivo aberto', style: TextStyle(color: Color(0xFF333333))),
                      const SizedBox(height: 12),
                      GestureDetector(
                        onTap: () => _newTab(),
                        child: Container(
                          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          decoration: BoxDecoration(
                            border: Border.all(color: const Color(0xFF00FF88)),
                            borderRadius: BorderRadius.circular(4),
                          ),
                          child: const Text('Novo arquivo', style: TextStyle(color: Color(0xFF00FF88), fontSize: 12)),
                        ),
                      ),
                    ],
                  ),
                )
              : _buildEditor(),
        ),
      ],
    );
  }

  Widget _buildEditor() {
    final tab = _tabs[_activeTab];
    return Stack(
      children: [
        // Editor de texto raw
        TextField(
          controller: tab.controller,
          maxLines: null,
          expands: true,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontFamily: 'monospace',
            height: 1.5,
          ),
          decoration: const InputDecoration(
            border: InputBorder.none,
            contentPadding: EdgeInsets.all(12),
            fillColor: Color(0xFF0D0D0D),
            filled: true,
          ),
          onChanged: (v) => setState(() => tab.modified = true),
        ),
      ],
    );
  }

  Widget _eBtn(IconData icon, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Icon(icon, size: 15, color: const Color(0xFF555555)),
      ),
    );
  }
}

class _EditorTab {
  String path;
  String content;
  TextEditingController controller;
  bool modified;

  _EditorTab({
    required this.path,
    required this.content,
    required this.controller,
    required this.modified,
  });
}
