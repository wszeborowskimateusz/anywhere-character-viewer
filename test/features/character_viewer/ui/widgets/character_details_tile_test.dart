import 'package:anywhere_character_viewer/core/ui/widgets/core_network_image.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_details_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utils/make_testable_widget.dart';
import '../../../../test_utils/test_data.dart';

void main() {
  testWidgets(
    'Should properly display CharacterDetailsTile',
    (tester) async {
      final testableWidget = makeTestableWidget(
        const CharacterDetailsTile(tCharacter),
      );

      await tester.pumpWidget(testableWidget);
      await tester.pumpAndSettle();

      expect(find.byType(SingleChildScrollView), findsOneWidget);
      expect(find.byType(CoreNetworkImage), findsOneWidget);
      expect(find.text(tCharacter.name), findsOneWidget);
      expect(find.text(tCharacter.description), findsOneWidget);
    },
  );
}
