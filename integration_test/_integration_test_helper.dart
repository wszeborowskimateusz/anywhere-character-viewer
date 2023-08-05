part of 'smoke_test.dart';

final characterTile = find.byType(CharacterListTile);
final firstCharacterTile = find.byType(CharacterListTile).first;
final searchBar = find.byType(CoreSearchBar);

void findsListWithCharactersAndSearchBar() {
  expect(characterTile, findsAtLeastNWidgets(1));
  expect(searchBar, findsOneWidget);
}

Future<void> tapFirstCharacter(WidgetTester tester) async {
  await tester.tapAndPump(firstCharacterTile);
}

void findsDetailedView() {
  expect(find.byType(CharacterDetailsTile), findsOneWidget);
}
