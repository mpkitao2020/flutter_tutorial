import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group("scrollable App", () {
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });
    tearDown(() async {
      await driver.close();
    });

    test("verifies the list contains a specific item", () async {
      final listFinder = find.byValueKey("long_list");
      final itemFinder = find.byValueKey("item_50_text");

      final timeline = await driver.traceAction(() async {
        await driver.scrollUntilVisible(
          listFinder,
          itemFinder,
          dyScroll: -300.0,
        );
        expect(await driver.getText(itemFinder), "Item 50");
      });

      final summary = new TimelineSummary.summarize(timeline);

      await summary.writeTimelineToFile("scrolling_summary", pretty: true);
      await summary.writeTimelineToFile("scrolling_timeline", pretty: true);
    });
  });
}
