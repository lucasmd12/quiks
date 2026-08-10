import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class BrowserScreen extends StatefulWidget {
  const BrowserScreen({super.key});

  @override
  State<BrowserScreen> createState() => _BrowserScreenState();
}

class _BrowserScreenState extends State<BrowserScreen> {
  late final WebViewController _controller;
  final TextEditingController _urlCtrl = TextEditingController(text: 'https://google.com');
  bool _loading = false;
  String _title = '';

  final List<String> _bookmarks = [
    'https://pub.dev',
    'https://docs.flutter.dev',
    'https://github.com',
    'https://stackoverflow.com',
    'https://google.com',
  ];

  @override
  void initState() {
    super.initState();
    _controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setUserAgent('Mozilla/5.0 (Linux; Android 13) AppleWebKit/537.36 Chrome/120.0.0.0 Mobile Safari/537.36')
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(() { _loading = true; _urlCtrl.text = url; });
        },
        onPageFinished: (url) async {
          final title = await _controller.getTitle();
          setState(() { _loading = false; _title = title ?? ''; });
        },
        onWebResourceError: (e) => setState(() => _loading = false),
      ))
      ..loadRequest(Uri.parse('https://google.com'));
  }

  void _navigate(String url) {
    var u = url.trim();
    if (!u.startsWith('http')) u = 'https://$u';
    _controller.loadRequest(Uri.parse(u));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Barra de URL
        Container(
          height: 44,
          color: const Color(0xFF111111),
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
          child: Row(
            children: [
              GestureDetector(
                onTap: () => _controller.goBack(),
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(Icons.arrow_back_ios, size: 14, color: Color(0xFF555555)),
                ),
              ),
              GestureDetector(
                onTap: () => _controller.goForward(),
                child: const Padding(
                  padding: EdgeInsets.only(right: 8),
                  child: Icon(Icons.arrow_forward_ios, size: 14, color: Color(0xFF555555)),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: const Color(0xFF1A1A1A),
                    borderRadius: BorderRadius.circular(6),
                    border: Border.all(color: const Color(0xFF333333)),
                  ),
                  child: TextField(
                    controller: _urlCtrl,
                    style: const TextStyle(color: Colors.white, fontSize: 11, fontFamily: 'monospace'),
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      isDense: true,
                    ),
                    onSubmitted: _navigate,
                    textInputAction: TextInputAction.go,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _loading ? _controller.stopLoading() : _controller.reload(),
                child: Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Icon(
                    _loading ? Icons.close : Icons.refresh,
                    size: 16,
                    color: const Color(0xFF555555),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () => _showBookmarks(),
                child: const Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Icon(Icons.bookmarks, size: 16, color: Color(0xFF555555)),
                ),
              ),
            ],
          ),
        ),
        // Loading indicator
        if (_loading)
          const LinearProgressIndicator(
            minHeight: 2,
            color: Color(0xFF00CCFF),
            backgroundColor: Colors.transparent,
          ),
        // WebView
        Expanded(
          child: WebViewWidget(controller: _controller),
        ),
      ],
    );
  }

  void _showBookmarks() {
    showModalBottomSheet(
      context: context,
      backgroundColor: const Color(0xFF111111),
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.all(12),
            child: Text('Favoritos', style: TextStyle(color: Color(0xFF00CCFF), fontWeight: FontWeight.bold)),
          ),
          ..._bookmarks.map((url) => ListTile(
            leading: const Icon(Icons.link, color: Color(0xFF555555), size: 16),
            title: Text(url, style: const TextStyle(color: Colors.white, fontSize: 12)),
            onTap: () { Navigator.pop(context); _navigate(url); },
          )),
        ],
      ),
    );
  }
}
