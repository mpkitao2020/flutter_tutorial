import 'package:flatter_tutorial/hello_world/list_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("Counter increments smoke test", (WidgetTester tester) async {
    await tester.pumpWidget(ListApp(
      items: List<String>.generate(10000, (i) => "Item $i"),
    ));

    final listFinder = find.byType(Scrollable);
    final itemFinder = find.byKey(const ValueKey("item_50_text"));

    await tester.scrollUntilVisible(
      itemFinder,
      500.0,
      scrollable: listFinder,
    );
    expect(itemFinder, findsOneWidget);
  });
}
