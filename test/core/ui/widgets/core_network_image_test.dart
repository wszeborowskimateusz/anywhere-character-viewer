import 'package:anywhere_character_viewer/core/ui/widgets/core_network_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../test_utils/make_testable_widget.dart';

void main() {
  testWidgets(
    'Should properly display CoreNetworkImage: no url',
    (tester) async {
      final testableWidget = makeTestableWidget(
        const CoreNetworkImage(),
      );

      await tester.pumpWidget(testableWidget);
      await tester.pumpAndSettle();

      expect(find.byType(Image), findsOneWidget);
      expect(find.byType(CachedNetworkImage), findsNothing);
    },
  );

  testWidgets(
    'Should properly display CoreNetworkImage: with url',
    (tester) async {
      final testableWidget = makeTestableWidget(
        const CoreNetworkImage(imageUrl: 'some url'),
      );

      await tester.pumpWidget(testableWidget);
      await tester.pump();

      expect(find.byType(CachedNetworkImage), findsOneWidget);
    },
  );
}
