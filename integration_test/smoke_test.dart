import 'package:anywhere_character_viewer/core/ui/widgets/core_search_bar.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_details_tile.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_list_tile.dart';
import 'package:flutter_test/flutter_test.dart';

import 'widget_tester_extensions.dart';

part '_integration_test_helper.dart';

void main() {
  testWidgets(
    'Should properly be able to add and remove photos from favourites',
    (WidgetTester tester) async {
      await tester.pumpApp();

      findsListWithCharactersAndSearchBar();

      await tapFirstCharacter(tester);

      findsDetailedView();
    },
  );
}
