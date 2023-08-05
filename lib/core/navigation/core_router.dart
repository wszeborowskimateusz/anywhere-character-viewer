import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/pages/character_details_page.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/pages/characters_list_page.dart';
import 'package:go_router/go_router.dart';

class CoreRouter {
  static GoRouter getClient() {
    return GoRouter(
      initialLocation: CharacterListPage.routeName,
      routes: [
        GoRoute(
          name: CharacterListPage.routeName,
          path: CharacterListPage.routeName,
          builder: (_, __) => const CharacterListPage(),
          routes: [
            GoRoute(
              path: CharacterDetailsPage.routeName,
              name: CharacterDetailsPage.routeName,
              builder: (_, state) =>
                  CharacterDetailsPage(state.extra! as Character),
            ),
          ],
        ),
      ],
    );
  }
}
