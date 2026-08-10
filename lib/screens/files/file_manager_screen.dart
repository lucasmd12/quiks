import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:archive/archive_io.dart';

class FileManagerScreen extends StatefulWidget {
  const FileManagerScreen({super.key});

  @override
  State<FileManagerScreen> createState() => _FileManagerScreenState();
}

class _FileManagerScreenState extends State<FileManagerScreen> {
  String _leftPath = '/storage/emulated/0';
  String _rightPath = '/storage/emulated/0/Download';
  List<FileSystemEntity> _leftItems = [];
  List<FileSystemEntity> _rightItems = [];
  bool _dualPane = true;
  bool _activePaneLeft = true;

  @override
  void initState() {
    super.initState();
    _requestPermissions();
  }

  Future<void> _requestPermissions() async {
    await Permission.manageExternalStorage.request();
    await Permission.storage.request();
    _loadDir(true, _leftPath);
    _loadDir(false, _rightPath);
  }

  Future<void> _loadDir(bool isLeft, String path) async {
    try {
      final dir = Directory(path);
      final items = dir.listSync()..sort((a, b) {
        final aIsDir = a is Directory;
        final bIsDir = b is Directory;
        if (aIsDir && !bIsDir) return -1;
        if (!aIsDir && bIsDir) return 1;
        return a.path.split('/').last.compareTo(b.path.split('/').last);
      });
      setState(() {
        if (isLeft) {
          _leftPath = path;
          _leftItems = items;
        } else {
          _rightPath = path;
          _rightItems = items;
        }
      });
    } catch (e) {
      _showMsg('Erro: $e');
    }
  }

  void _showMsg(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(msg), backgroundColor: const Color(0xFF1A1A2A)),
    );
  }

  String _fileName(FileSystemEntity e) => e.path.split('/').last;

  bool _isDir(FileSystemEntity e) => e is Directory;

  String _fileSize(FileSystemEntity e) {
    if (e is File) {
      final bytes = e.lengthSync();
      if (bytes < 1024) return '${bytes}B';
      if (bytes < 1048576) return '${(bytes / 1024).toStringAsFixed(1)}K';
      return '${(bytes / 1048576).toStringAsFixed(1)}M';
    }
    return '';
  }

  Future<void> _compress(FileSystemEntity e) async {
    final name = _fileName(e);
    final outPath = '${e.parent.path}/$name.zip';
    final encoder = ZipFileEncoder();
    encoder.create(outPath);
    if (e is Directory) {
      encoder.addDirectory(e);
    } else if (e is File) {
      encoder.addFile(e);
    }
    encoder.close();
    _showMsg('Comprimido: $outPath');
    _loadDir(_activePaneLeft, _activePaneLeft ? _leftPath : _rightPath);
  }

  Future<void> _decompress(File f) async {
    final bytes = f.readAsBytesSync();
    final archive = ZipDecoder().decodeBytes(bytes);
    final outDir = '${f.parent.path}/${_fileName(f).replaceAll('.zip', '')}';
    for (final file in archive) {
      final filename = '$outDir/${file.name}';
      if (file.isFile) {
        File(filename)
          ..createSync(recursive: true)
          ..writeAsBytesSync(file.content as List<int>);
      } else {
        Directory(filename).createSync(recursive: true);
      }
    }
    _showMsg('Extraído em: $outDir');
    _loadDir(_activePaneLeft, _activePaneLeft ? _leftPath : _rightPath);
  }

  void _showContextMenu(BuildContext context, FileSystemEntity e, bool isLeft) {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF111111),
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.archive, color: Color(0xFF00FF88)),
            title: const Text('Comprimir (ZIP)', style: TextStyle(color: Colors.white)),
            onTap: () { Navigator.pop(context); _compress(e); },
          ),
          if (e is File && _fileName(e).endsWith('.zip'))
            ListTile(
              leading: const Icon(Icons.unarchive, color: Color(0xFF00CCFF)),
              title: const Text('Extrair ZIP', style: TextStyle(color: Colors.white)),
              onTap: () { Navigator.pop(context); _decompress(e as File); },
            ),
          ListTile(
            leading: const Icon(Icons.delete, color: Colors.redAccent),
            title: const Text('Deletar', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              _deleteConfirm(e, isLeft);
            },
          ),
          ListTile(
            leading: const Icon(Icons.copy, color: Color(0xFF888888)),
            title: const Text('Copiar para outro painel', style: TextStyle(color: Colors.white)),
            onTap: () {
              Navigator.pop(context);
              _copyToOther(e, isLeft);
            },
          ),
        ],
      ),
    );
  }

  Future<void> _deleteConfirm(FileSystemEntity e, bool isLeft) async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF111111),
        title: const Text('Confirmar', style: TextStyle(color: Colors.white)),
        content: Text('Deletar ${_fileName(e)}?', style: const TextStyle(color: Color(0xFFAAAAAA))),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context, false), child: const Text('Cancelar')),
          TextButton(onPressed: () => Navigator.pop(context, true), child: const Text('Deletar', style: TextStyle(color: Colors.red))),
        ],
      ),
    );
    if (confirm == true) {
      if (e is Directory) {
        e.deleteSync(recursive: true);
      } else {
        e.deleteSync();
      }
      _loadDir(isLeft, isLeft ? _leftPath : _rightPath);
    }
  }

  Future<void> _copyToOther(FileSystemEntity e, bool fromLeft) async {
    final destDir = fromLeft ? _rightPath : _leftPath;
    final destPath = '$destDir/${_fileName(e)}';
    if (e is File) {
      e.copySync(destPath);
    } else if (e is Directory) {
      _copyDirRecursive(e, Directory(destPath));
    }
    _loadDir(!fromLeft, fromLeft ? _rightPath : _leftPath);
    _showMsg('Copiado para ${fromLeft ? "direita" : "esquerda"}');
  }

  void _copyDirRecursive(Directory src, Directory dest) {
    dest.createSync(recursive: true);
    for (final e in src.listSync()) {
      final name = e.path.split('/').last;
      if (e is File) {
        e.copySync('${dest.path}/$name');
      } else if (e is Directory) {
        _copyDirRecursive(e, Directory('${dest.path}/$name'));
      }
    }
  }

  Widget _buildPane(bool isLeft) {
    final path = isLeft ? _leftPath : _rightPath;
    final items = isLeft ? _leftItems : _rightItems;
    final active = _activePaneLeft == isLeft;

    return GestureDetector(
      onTap: () => setState(() => _activePaneLeft = isLeft),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: active ? const Color(0xFF00FF88) : const Color(0xFF222222),
            width: active ? 1 : 0.5,
          ),
        ),
        child: Column(
          children: [
            // Header do painel
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
              color: active ? const Color(0xFF001A00) : const Color(0xFF0A0A0A),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      final parent = Directory(path).parent.path;
                      _loadDir(isLeft, parent);
                    },
                    child: const Icon(Icons.arrow_upward, size: 14, color: Color(0xFF00FF88)),
                  ),
                  const SizedBox(width: 6),
                  Expanded(
                    child: Text(
                      path.replaceAll('/storage/emulated/0', '~'),
                      style: const TextStyle(
                        color: Color(0xFF00FF88),
                        fontSize: 9,
                        fontFamily: 'monospace',
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => _loadDir(isLeft, path),
                    child: const Icon(Icons.refresh, size: 14, color: Color(0xFF444444)),
                  ),
                ],
              ),
            ),
            // Lista de arquivos
            Expanded(
              child: items.isEmpty
                  ? const Center(
                      child: Text('Vazio', style: TextStyle(color: Color(0xFF333333), fontSize: 11)),
                    )
                  : ListView.builder(
                      itemCount: items.length,
                      itemBuilder: (_, i) {
                        final e = items[i];
                        final isDirectory = _isDir(e);
                        return GestureDetector(
                          onTap: () {
                            if (isDirectory) {
                              _loadDir(isLeft, e.path);
                            }
                          },
                          onLongPress: () => _showContextMenu(context, e, isLeft),
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 5),
                            decoration: BoxDecoration(
                              border: const Border(
                                bottom: BorderSide(color: Color(0xFF1A1A1A), width: 0.5),
                              ),
                            ),
                            child: Row(
                              children: [
                                Icon(
                                  isDirectory ? Icons.folder : _fileIcon(_fileName(e)),
                                  size: 14,
                                  color: isDirectory ? const Color(0xFFFFAA00) : const Color(0xFF666666),
                                ),
                                const SizedBox(width: 6),
                                Expanded(
                                  child: Text(
                                    _fileName(e),
                                    style: TextStyle(
                                      color: isDirectory ? const Color(0xFFFFCC66) : const Color(0xFFCCCCCC),
                                      fontSize: 11,
                                      fontFamily: 'monospace',
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                Text(
                                  _fileSize(e),
                                  style: const TextStyle(
                                    color: Color(0xFF444444),
                                    fontSize: 9,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  IconData _fileIcon(String name) {
    if (name.endsWith('.dart')) return Icons.code;
    if (name.endsWith('.zip') || name.endsWith('.tar') || name.endsWith('.gz')) return Icons.archive;
    if (name.endsWith('.png') || name.endsWith('.jpg') || name.endsWith('.jpeg')) return Icons.image;
    if (name.endsWith('.apk')) return Icons.android;
    if (name.endsWith('.json')) return Icons.data_object;
    if (name.endsWith('.yaml') || name.endsWith('.yml')) return Icons.settings;
    if (name.endsWith('.md')) return Icons.article;
    return Icons.insert_drive_file;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Toolbar
        Container(
          height: 36,
          color: const Color(0xFF0D0D0D),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              _toolBtn(Icons.create_new_folder, 'Nova pasta', () => _createFolder()),
              _toolBtn(Icons.note_add, 'Novo arquivo', () => _createFile()),
              const Spacer(),
              GestureDetector(
                onTap: () => setState(() => _dualPane = !_dualPane),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  decoration: BoxDecoration(
                    color: _dualPane ? const Color(0xFF00FF88).withOpacity(0.1) : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: const Color(0xFF333333)),
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.view_column, size: 12, color: _dualPane ? const Color(0xFF00FF88) : const Color(0xFF555555)),
                      const SizedBox(width: 4),
                      Text('Dual', style: TextStyle(fontSize: 9, color: _dualPane ? const Color(0xFF00FF88) : const Color(0xFF555555))),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        // Painéis
        Expanded(
          child: _dualPane
              ? Row(
                  children: [
                    Expanded(child: _buildPane(true)),
                    Expanded(child: _buildPane(false)),
                  ],
                )
              : _buildPane(_activePaneLeft),
        ),
      ],
    );
  }

  Widget _toolBtn(IconData icon, String tip, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
        child: Icon(icon, size: 16, color: const Color(0xFF555555)),
      ),
    );
  }

  Future<void> _createFolder() async {
    final path = _activePaneLeft ? _leftPath : _rightPath;
    final ctrl = TextEditingController();
    final name = await showDialog<String>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF111111),
        title: const Text('Nova pasta', style: TextStyle(color: Colors.white)),
        content: TextField(
          controller: ctrl,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(hintText: 'nome', hintStyle: TextStyle(color: Color(0xFF555555))),
          autofocus: true,
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
          TextButton(onPressed: () => Navigator.pop(context, ctrl.text), child: const Text('Criar')),
        ],
      ),
    );
    if (name != null && name.isNotEmpty) {
      Directory('$path/$name').createSync();
      _loadDir(_activePaneLeft, path);
    }
  }

  Future<void> _createFile() async {
    final path = _activePaneLeft ? _leftPath : _rightPath;
    final ctrl = TextEditingController();
    final name = await showDialog<String>(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: const Color(0xFF111111),
        title: const Text('Novo arquivo', style: TextStyle(color: Colors.white)),
        content: TextField(
          controller: ctrl,
          style: const TextStyle(color: Colors.white),
          decoration: const InputDecoration(hintText: 'arquivo.dart', hintStyle: TextStyle(color: Color(0xFF555555))),
          autofocus: true,
        ),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text('Cancelar')),
          TextButton(onPressed: () => Navigator.pop(context, ctrl.text), child: const Text('Criar')),
        ],
      ),
    );
    if (name != null && name.isNotEmpty) {
      File('$path/$name').createSync();
      _loadDir(_activePaneLeft, path);
    }
  }
}
