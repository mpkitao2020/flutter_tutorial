import 'package:flatter_tutorial/hello_world/main_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("MyWidget has a title and message", (WidgetTester tester) async {
    await tester.pumpWidget(const MyWidget(title: 'T', message: "M"));
    final titleFindedr = find.text("T");
    final messageFinder = find.text("M");

    expect(titleFindedr, findsOneWidget);
    expect(messageFinder, findsOneWidget);
  });
}
