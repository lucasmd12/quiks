import 'package:flutter/material.dart';
import 'files/file_manager_screen.dart';
import 'editor/code_editor_screen.dart';
import 'browser/browser_screen.dart';
import 'graph/graph_screen.dart';
import '../widgets/bottom_panel.dart';
import '../widgets/top_nav_bar.dart';

class WorkspaceScreen extends StatefulWidget {
  const WorkspaceScreen({super.key});

  @override
  State<WorkspaceScreen> createState() => _WorkspaceScreenState();
}

class _WorkspaceScreenState extends State<WorkspaceScreen> {
  int _currentTab = 0;
  int _bottomPanel = 0; // 0=terminal 1=preview 2=logs 3=tasks

  final List<Widget> _screens = const [
    FileManagerScreen(),
    CodeEditorScreen(),
    GraphScreen(),
    BrowserScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0D0D0D),
      body: SafeArea(
        child: Column(
          children: [
            TopNavBar(
              currentTab: _currentTab,
              onTabChanged: (i) => setState(() => _currentTab = i),
            ),
            Expanded(
              child: _screens[_currentTab],
            ),
            BottomPanel(
              currentPanel: _bottomPanel,
              onPanelChanged: (i) => setState(() => _bottomPanel = i),
            ),
          ],
        ),
      ),
    );
  }
}
