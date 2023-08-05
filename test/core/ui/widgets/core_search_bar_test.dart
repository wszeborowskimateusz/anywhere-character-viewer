import 'package:anywhere_character_viewer/core/ui/widgets/core_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_utils/make_testable_widget.dart';

void main() {
  testWidgets(
    'Should properly display CoreSearchBar',
    (tester) async {
      final testableWidget = makeTestableWidget(
        CoreSearchBar(
          onSearch: (_) {},
        ),
      );

      await tester.pumpWidget(testableWidget);
      await tester.pumpAndSettle();

      expect(find.byType(TextFormField), findsOneWidget);
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.close), findsOneWidget);
    },
  );
}
