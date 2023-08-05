import 'package:anywhere_character_viewer/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';

extension WidgetTesterExtensions on WidgetTester {
  /// Runs the whole app and does the pump
  /// Used in integration / E2E tests
  Future<void> pumpApp() async {
    await app.main();
    await pumpAndSettle();
  }

  Future<void> tapAndPump(Finder finder) async {
    await tap(finder);
    await pumpAndSettle();
  }
}
