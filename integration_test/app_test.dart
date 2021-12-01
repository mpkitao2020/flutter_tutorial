import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:flatter_tutorial/hello_world/integration_test.dart' as app;

void main() {
  testWidgets("tap on the floating action button, verify counter",
      (WidgetTester tester) async {
    app.main();
    await tester.pumpAndSettle();

    expect(find.text("0"), findsOneWidget);

    final Finder fab = find.byTooltip("Increment");

    await tester.tap(fab);

    await tester.pumpAndSettle();

    expect(find.text("1"), findsOneWidget);
  });
}
