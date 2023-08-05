import 'package:anywhere_character_viewer/features/character_viewer/ui/pages/character_details_page.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_details_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utils/make_testable_widget.dart';
import '../../../../test_utils/test_data.dart';
import '../../../../test_utils/test_translations.dart';

void main() {
  testWidgets(
    'Should properly display CharacterDetailsPage',
    (tester) async {
      final testableWidget = makeTestableWidget(
        const CharacterDetailsPage(tCharacter),
      );

      await tester.pumpWidget(testableWidget);
      await tester.pumpAndSettle();

      expect(find.byType(Scaffold), findsOneWidget);
      expect(find.byType(AppBar), findsOneWidget);
      expect(find.byType(CharacterDetailsTile), findsOneWidget);
      expect(
        find.text(testTranslations.charactersDetailsPageTitle),
        findsOneWidget,
      );
      expect(find.text(tCharacter.description), findsOneWidget);
    },
  );
}
