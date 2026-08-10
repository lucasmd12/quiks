import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:lucasbeatsfederacao/main.dart';

void main() {
  testWidgets('DevDeck smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const DevDeckApp());
    expect(find.byType(MaterialApp), findsOneWidget);
  });
}
