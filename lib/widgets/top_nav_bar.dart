import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  final int currentTab;
  final Function(int) onTabChanged;

  const TopNavBar({
    super.key,
    required this.currentTab,
    required this.onTabChanged,
  });

  @override
  Widget build(BuildContext context) {
    const tabs = [
      {'icon': Icons.folder_open, 'label': 'Files'},
      {'icon': Icons.edit, 'label': 'Editor'},
      {'icon': Icons.account_tree_outlined, 'label': 'Graph'},
      {'icon': Icons.public, 'label': 'Browser'},
    ];

    return Container(
      height: 56,
      decoration: const BoxDecoration(
        color: Color(0xFF111111),
        border: Border(
          bottom: BorderSide(color: Color(0xFF00FF88), width: 1),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Text(
              'DEV\nDECK',
              style: TextStyle(
                color: const Color(0xFF00FF88),
                fontSize: 9,
                fontWeight: FontWeight.bold,
                height: 1.1,
                letterSpacing: 1,
              ),
            ),
          ),
          const VerticalDivider(color: Color(0xFF2A2A2A), width: 1),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: List.generate(tabs.length, (i) {
                final active = currentTab == i;
                return GestureDetector(
                  onTap: () => onTabChanged(i),
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 180),
                    padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                    decoration: BoxDecoration(
                      color: active ? const Color(0xFF00FF88).withOpacity(0.12) : Colors.transparent,
                      borderRadius: BorderRadius.circular(6),
                      border: active
                          ? Border.all(color: const Color(0xFF00FF88), width: 1)
                          : Border.all(color: Colors.transparent),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          tabs[i]['icon'] as IconData,
                          size: 18,
                          color: active ? const Color(0xFF00FF88) : const Color(0xFF555555),
                        ),
                        const SizedBox(height: 2),
                        Text(
                          tabs[i]['label'] as String,
                          style: TextStyle(
                            fontSize: 9,
                            color: active ? const Color(0xFF00FF88) : const Color(0xFF555555),
                            fontWeight: active ? FontWeight.bold : FontWeight.normal,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              }),
            ),
          ),
        ],
      ),
    );
  }
}
