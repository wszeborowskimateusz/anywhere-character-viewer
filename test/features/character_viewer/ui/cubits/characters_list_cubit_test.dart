import 'package:anywhere_character_viewer/core/errors/failures.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_use_case.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_cubit.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/cubits/characters_list_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks.dart';
import '../../../../test_utils/test_data.dart';

void main() {
  final GetCharactersUseCase getCharactersUseCase = GetCharactersUseCaseMock();

  const initialState = CharactersListState.loading();

  CharactersListCubit prepareCubit() => CharactersListCubit(
        getCharactersUseCase,
      );

  test('Initial state', () {
    expect(prepareCubit().state, initialState);
  });

  group('loadData', () {
    test('should properly handle success case', () {
      testBloc<CharactersListCubit, CharactersListState>(
        build: prepareCubit,
        setUp: () {
          when(getCharactersUseCase).thenAnswer(
            (_) async => const Right<Failure, List<Character>>([tCharacter]),
          );
        },
        act: (cubit) => cubit.loadData(),
        expect: () => [
          const CharactersListState.loading(),
          const TypeMatcher<CharactersListLoadedState>()
              .having(
                (state) => state.searchResults,
                'searchResults',
                null,
              )
              .having(
                (state) => state.characters.first,
                'characters',
                tCharacter,
              ),
        ],
      );
    });

    test('should properly handle failure case', () {
      testBloc<CharactersListCubit, CharactersListState>(
        build: prepareCubit,
        setUp: () {
          when(getCharactersUseCase).thenAnswer(
            (_) async => const Left<Failure, List<Character>>(tGeneralFailure),
          );
        },
        act: (cubit) => cubit.loadData(),
        expect: () => [
          const CharactersListState.loading(),
          const CharactersListState.error(),
        ],
      );
    });
  });

  group('search', () {
    test('should properly handle success case', () {
      final testCharacters = [
        tCharacter.copyWith(name: 'asd', description: 'zxc'),
        tCharacter.copyWith(name: 'zxc', description: 'asd'),
        tCharacter.copyWith(name: 'bbb', description: 'ccc'),
      ];

      testBloc<CharactersListCubit, CharactersListState>(
        build: prepareCubit,
        setUp: () {
          when(getCharactersUseCase).thenAnswer(
            (_) async => Right<Failure, List<Character>>(testCharacters),
          );
        },
        act: (cubit) async {
          await cubit.loadData();
          cubit.search('a');
        },
        expect: () => [
          const CharactersListState.loading(),
          const TypeMatcher<CharactersListLoadedState>()
              .having(
                (state) => state.searchResults!.length,
                'searchResultsLength',
                2,
              )
              .having(
                (state) => state.searchResults![0],
                'searchResultsFirst',
                testCharacters.first,
              )
              .having(
                (state) => state.searchResults![1],
                'searchResultsSecond',
                testCharacters[1],
              )
              .having(
                (state) => state.characters.first,
                'characters',
                tCharacter,
              ),
        ],
      );
    });
  });
}
