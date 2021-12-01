import 'package:flatter_tutorial/hello_world/todo_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets("add and remove a todo", (WidgetTester tester) async {
    await tester.pumpWidget(const TodoList());

    await tester.enterText(find.byType(TextField), "hi!");

    await tester.tap(find.byType(FloatingActionButton));
    // 処理まち
    await tester.pump();
    // expect(find.text("hi!"), findsOneWidget);

    await tester.drag(find.byType(Dismissible), const Offset(500.0, 0.0));
    //  アニメーションが終わるまで待つ
    await tester.pumpAndSettle();

    expect(find.text("hi!"), findsNothing);
  });
}
