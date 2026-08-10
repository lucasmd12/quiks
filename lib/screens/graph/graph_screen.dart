import 'dart:io';
import 'dart:math';
import 'package:flutter/material.dart';

class GraphScreen extends StatefulWidget {
  const GraphScreen({super.key});

  @override
  State<GraphScreen> createState() => _GraphScreenState();
}

class _GraphScreenState extends State<GraphScreen> {
  List<_FileNode> _nodes = [];
  String _rootPath = '/storage/emulated/0';
  double _scale = 1.0;
  Offset _offset = Offset.zero;

  @override
  void initState() {
    super.initState();
    _buildGraph(_rootPath);
  }

  void _buildGraph(String path) {
    final nodes = <_FileNode>[];
    try {
      final dir = Directory(path);
      final items = dir.listSync();
      final rng = Random();
      for (int i = 0; i < items.length && i < 40; i++) {
        final e = items[i];
        final angle = (i / items.length) * 2 * pi;
        final radius = 120.0 + rng.nextDouble() * 80;
        nodes.add(_FileNode(
          path: e.path,
          name: e.path.split('/').last,
          isDir: e is Directory,
          x: cos(angle) * radius + 200,
          y: sin(angle) * radius + 200,
        ));
      }
    } catch (_) {}
    setState(() {
      _rootPath = path;
      _nodes = nodes;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 36,
          color: const Color(0xFF0A0A0A),
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            children: [
              const Icon(Icons.account_tree, size: 14, color: Color(0xFF00FF88)),
              const SizedBox(width: 6),
              Expanded(
                child: Text(
                  _rootPath.replaceAll('/storage/emulated/0', '~'),
                  style: const TextStyle(color: Color(0xFF555555), fontSize: 10, fontFamily: 'monospace'),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              GestureDetector(
                onTap: () {
                  final parent = Directory(_rootPath).parent.path;
                  _buildGraph(parent);
                },
                child: const Icon(Icons.arrow_upward, size: 14, color: Color(0xFF444444)),
              ),
            ],
          ),
        ),
        Expanded(
          child: GestureDetector(
            onScaleUpdate: (d) {
              setState(() {
                _scale = (_scale * d.scale).clamp(0.3, 3.0);
                _offset += d.focalPointDelta;
              });
            },
            child: ClipRect(
              child: CustomPaint(
                painter: _GraphPainter(_nodes, _scale, _offset),
                child: Stack(
                  children: _nodes.map((node) {
                    return Positioned(
                      left: node.x * _scale + _offset.dx - 30,
                      top: node.y * _scale + _offset.dy - 20,
                      child: GestureDetector(
                        onTap: () {
                          if (node.isDir) _buildGraph(node.path);
                        },
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(
                              node.isDir ? Icons.folder : Icons.insert_drive_file,
                              size: 18,
                              color: node.isDir ? const Color(0xFFFFAA00) : const Color(0xFF00CCFF),
                            ),
                            Container(
                              constraints: const BoxConstraints(maxWidth: 60),
                              child: Text(
                                node.name,
                                style: const TextStyle(
                                  color: Color(0xFF888888),
                                  fontSize: 7,
                                  fontFamily: 'monospace',
                                ),
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class _FileNode {
  final String path;
  final String name;
  final bool isDir;
  final double x;
  final double y;

  _FileNode({
    required this.path,
    required this.name,
    required this.isDir,
    required this.x,
    required this.y,
  });
}

class _GraphPainter extends CustomPainter {
  final List<_FileNode> nodes;
  final double scale;
  final Offset offset;

  _GraphPainter(this.nodes, this.scale, this.offset);

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = 200.0 * scale + offset.dx;
    final centerY = 200.0 * scale + offset.dy;

    final linePaint = Paint()
      ..color = const Color(0xFF1A2A1A)
      ..strokeWidth = 0.8;

    for (final node in nodes) {
      canvas.drawLine(
        Offset(centerX, centerY),
        Offset(node.x * scale + offset.dx, node.y * scale + offset.dy),
        linePaint,
      );
    }

    final centerPaint = Paint()..color = const Color(0xFF00FF88);
    canvas.drawCircle(Offset(centerX, centerY), 6 * scale, centerPaint);
  }

  @override
  bool shouldRepaint(_GraphPainter old) => true;
}
