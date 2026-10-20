import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:name_spark/screens/home_screen.dart';
import 'package:name_spark/widgets/generate_button.dart';
import 'package:name_spark/widgets/name_table.dart';

void main() {
  testWidgets('NameSpark test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: HomeScreen()));

    expect(find.byType(GenerateButton), findsOneWidget);
    expect(find.byType(NameTable), findsOneWidget);

    final cells = find.descendant(
      of: find.byType(NameTable),
      matching: find.byType(TableCell),
    );
    final before = cells.evaluate().length;

    await tester.tap(find.byType(GenerateButton));
    await tester.pump();

    expect(cells.evaluate().length, before + 1);
  });
}
