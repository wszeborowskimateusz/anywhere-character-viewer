import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../test_utils/make_testable_widget.dart';
import '../../../../test_utils/test_data.dart';

void main() {
  testWidgets(
    'Should properly display CharacterListTile',
    (tester) async {
      final testableWidget = makeTestableWidget(
        CharacterListTile(tCharacter, onCharacterSelected: () {}),
      );

      await tester.pumpWidget(testableWidget);
      await tester.pumpAndSettle();

      expect(find.byType(ListTile), findsOneWidget);
      expect(find.byIcon(Icons.person), findsOneWidget);
      expect(find.text(tCharacter.name), findsOneWidget);
    },
  );
}
