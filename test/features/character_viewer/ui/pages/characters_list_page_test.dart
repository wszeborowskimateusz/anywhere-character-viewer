import 'package:anywhere_character_viewer/core/dependency_injection/get_it.dart';
import 'package:anywhere_character_viewer/core/ui/widgets/core_centered_scrollable_with_refresh.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_cubit.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_state.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/pages/characters_list_page.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_details_tile.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/widgets/character_list_tile.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dual_screen/dual_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/make_testable_widget.dart';
import '../../../../test_utils/mocks.dart';
import '../../../../test_utils/test_data.dart';
import '../../../../test_utils/test_translations.dart';

void main() {
  const initialState = CharactersListState.loading();
  final mockCubit = CharactersListCubitMock();

  setUpAll(() {
    getIt.registerFactory<CharactersListCubit>(() => mockCubit);

    when(mockCubit.loadData).thenAnswer((_) async {});
  });

  Future<void> prepareWidget(
    WidgetTester tester, {
    required CharactersListState state,
  }) async {
    whenListen(
      mockCubit,
      Stream.fromIterable([state]),
      initialState: state,
    );

    await tester.pumpWidget(makeTestableWidget(const CharacterListPage()));
    await tester.pump();

    expect(find.byType(Scaffold), findsOneWidget);
    expect(find.byType(AppBar), findsOneWidget);
  }

  testWidgets(
    'Should properly display CharacterListPage: loading state',
    (tester) async {
      await prepareWidget(tester, state: initialState);

      expect(find.byType(CircularProgressIndicator), findsOneWidget);
    },
  );

  testWidgets(
    'Should properly display CharacterListPage: error state',
    (tester) async {
      await prepareWidget(tester, state: const CharactersListState.error());

      expect(
        find.text(testTranslations.charactersListPageError),
        findsOneWidget,
      );
      expect(find.byType(ElevatedButton), findsOneWidget);
      expect(
        find.text(testTranslations.charactersListPageTryAgain),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Should properly display CharacterListPage: empty state',
    (tester) async {
      await prepareWidget(tester, state: const CharactersListState.loaded([]));

      expect(find.byType(CoreCenteredScrollableWithRefresh), findsOneWidget);
      expect(
        find.text(testTranslations.charactersListPageEmpty),
        findsOneWidget,
      );
    },
  );

  testWidgets(
    'Should properly display CharacterListPage: loaded state',
    (tester) async {
      final standardSize = tester.view.physicalSize;
      tester.view.physicalSize = const Size(400, 500);
      addTearDown(() => tester.view.physicalSize = standardSize);

      await prepareWidget(
        tester,
        state: const CharactersListState.loaded([tCharacter]),
      );

      expect(find.byType(TwoPane), findsOneWidget);
      expect(find.byType(CharacterListTile), findsOneWidget);
      expect(find.byType(CharacterDetailsTile), findsNothing);
      expect(
        find.text(testTranslations.charactersDetailsPageNoCharacterSelected),
        findsNothing,
      );
    },
  );

  testWidgets(
    'Should properly display CharacterListPage: loaded state two pane',
    (tester) async {
      await prepareWidget(
        tester,
        state: const CharactersListState.loaded([tCharacter]),
      );

      expect(find.byType(TwoPane), findsOneWidget);
      expect(find.byType(CharacterListTile), findsOneWidget);
      expect(find.byType(CharacterDetailsTile), findsOneWidget);
      expect(
        find.text(testTranslations.charactersDetailsPageNoCharacterSelected),
        findsNothing,
      );
    },
  );

  testWidgets(
    'Should properly display CharacterListPage: search results',
    (tester) async {
      await prepareWidget(
        tester,
        state: const CharactersListState.loaded(
          [tCharacter, tCharacter],
          searchResults: [tCharacter],
        ),
      );

      expect(find.byType(TwoPane), findsOneWidget);
      expect(find.byType(CharacterListTile), findsOneWidget);
    },
  );

  testWidgets(
    'Should properly display CharacterListPage: empty search results',
    (tester) async {
      await prepareWidget(
        tester,
        state: const CharactersListState.loaded(
          [tCharacter],
          searchResults: [],
        ),
      );

      expect(find.byType(TwoPane), findsOneWidget);
      expect(find.byType(CharacterListTile), findsNothing);
      expect(
        find.text(testTranslations.charactersListPageSearchEmptyResults),
        findsOneWidget,
      );
    },
  );
}
