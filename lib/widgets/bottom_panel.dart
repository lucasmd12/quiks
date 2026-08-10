import 'package:flutter/material.dart';
import '../services/termux_bridge.dart';

class BottomPanel extends StatefulWidget {
  final int currentPanel;
  final Function(int) onPanelChanged;

  const BottomPanel({
    super.key,
    required this.currentPanel,
    required this.onPanelChanged,
  });

  @override
  State<BottomPanel> createState() => _BottomPanelState();
}

class _BottomPanelState extends State<BottomPanel> {
  bool _expanded = false;
  final List<String> _logs = ['[DevDeck] Pronto.'];
  final List<String> _tasks = ['Build APK profile', 'Testar bridge Termux'];

  final List<Map<String, dynamic>> _panels = const [
    {'icon': Icons.terminal, 'label': 'Terminal'},
    {'icon': Icons.preview, 'label': 'Preview'},
    {'icon': Icons.list_alt, 'label': 'Logs'},
    {'icon': Icons.checklist, 'label': 'Tasks'},
  ];

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 220),
      height: _expanded ? 280 : 44,
      decoration: const BoxDecoration(
        color: Color(0xFF0A0A0A),
        border: Border(
          top: BorderSide(color: Color(0xFF00CCFF), width: 1),
        ),
      ),
      child: Column(
        children: [
          // Tab bar do painel
          SizedBox(
            height: 44,
            child: Row(
              children: [
                ...List.generate(_panels.length, (i) {
                  final active = widget.currentPanel == i;
                  return GestureDetector(
                    onTap: () {
                      widget.onPanelChanged(i);
                      if (!_expanded) setState(() => _expanded = true);
                    },
                    child: AnimatedContainer(
                      duration: const Duration(milliseconds: 150),
                      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                      decoration: BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: active ? const Color(0xFF00CCFF) : Colors.transparent,
                            width: 2,
                          ),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            _panels[i]['icon'] as IconData,
                            size: 14,
                            color: active ? const Color(0xFF00CCFF) : const Color(0xFF444444),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            _panels[i]['label'] as String,
                            style: TextStyle(
                              fontSize: 11,
                              color: active ? const Color(0xFF00CCFF) : const Color(0xFF444444),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                }),
                const Spacer(),
                // Botão Termux
                GestureDetector(
                  onTap: () => TermuxBridge.openTermux(),
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
                    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1A2A1A),
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: const Color(0xFF00FF88), width: 1),
                    ),
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.call_split, size: 12, color: Color(0xFF00FF88)),
                        SizedBox(width: 4),
                        Text('Termux', style: TextStyle(fontSize: 10, color: Color(0xFF00FF88))),
                      ],
                    ),
                  ),
                ),
                // Toggle expand
                GestureDetector(
                  onTap: () => setState(() => _expanded = !_expanded),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Icon(
                      _expanded ? Icons.keyboard_arrow_down : Icons.keyboard_arrow_up,
                      size: 18,
                      color: const Color(0xFF444444),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // Conteúdo do painel
          if (_expanded)
            Expanded(
              child: _buildPanelContent(),
            ),
        ],
      ),
    );
  }

  Widget _buildPanelContent() {
    switch (widget.currentPanel) {
      case 0:
        return _buildTerminalPanel();
      case 1:
        return _buildPreviewPanel();
      case 2:
        return _buildLogsPanel();
      case 3:
        return _buildTasksPanel();
      default:
        return const SizedBox();
    }
  }

  Widget _buildTerminalPanel() {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            '$ DevDeck Terminal Bridge',
            style: TextStyle(color: Color(0xFF00FF88), fontSize: 11, fontFamily: 'monospace'),
          ),
          const SizedBox(height: 4),
          const Text(
            'Toque em "Termux" para abrir o terminal completo.',
            style: TextStyle(color: Color(0xFF666666), fontSize: 10),
          ),
          const SizedBox(height: 8),
          Wrap(
            spacing: 6,
            runSpacing: 6,
            children: [
              _quickCmd('ls ~'),
              _quickCmd('pwd'),
              _quickCmd('flutter pub get'),
              _quickCmd('flutter build apk --profile'),
              _quickCmd('git status'),
              _quickCmd('git log --oneline -5'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _quickCmd(String cmd) {
    return GestureDetector(
      onTap: () => TermuxBridge.runCommand(cmd),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        decoration: BoxDecoration(
          color: const Color(0xFF1A1A1A),
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: const Color(0xFF333333)),
        ),
        child: Text(
          cmd,
          style: const TextStyle(
            color: Color(0xFF00CCFF),
            fontSize: 10,
            fontFamily: 'monospace',
          ),
        ),
      ),
    );
  }

  Widget _buildPreviewPanel() {
    return const Center(
      child: Text(
        'Preview do arquivo selecionado no Editor',
        style: TextStyle(color: Color(0xFF444444), fontSize: 11),
      ),
    );
  }

  Widget _buildLogsPanel() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: _logs.length,
      itemBuilder: (_, i) => Text(
        _logs[i],
        style: const TextStyle(
          color: Color(0xFF00FF88),
          fontSize: 10,
          fontFamily: 'monospace',
        ),
      ),
    );
  }

  Widget _buildTasksPanel() {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: _tasks.length,
      itemBuilder: (_, i) => Row(
        children: [
          const Icon(Icons.radio_button_unchecked, size: 12, color: Color(0xFF00CCFF)),
          const SizedBox(width: 6),
          Text(
            _tasks[i],
            style: const TextStyle(color: Color(0xFFCCCCCC), fontSize: 11),
          ),
        ],
      ),
    );
  }
}
