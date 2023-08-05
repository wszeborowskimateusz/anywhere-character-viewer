import 'package:anywhere_character_viewer/core/ui/widgets/core_centered_scrollable_with_refresh.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_utils/make_testable_widget.dart';

void main() {
  testWidgets(
    'Should properly display CoreCenteredScrollableWithRefresh',
    (tester) async {
      const childKey = Key('some key');
      final testableWidget = makeTestableWidget(
        CoreCenteredScrollableWithRefresh(
          onRefresh: () async {},
          child: Container(
            key: childKey,
          ),
        ),
      );

      await tester.pumpWidget(testableWidget);
      await tester.pumpAndSettle();

      expect(find.byKey(childKey), findsOneWidget);
      expect(find.byType(RefreshIndicator), findsOneWidget);
      expect(find.byType(SingleChildScrollView), findsOneWidget);
    },
  );
}
