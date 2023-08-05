import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_use_case.dart';
import 'package:anywhere_character_viewer/features/character_viewer/ui/blocs/characters_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class CharactersListCubit extends Cubit<CharactersListState> {
  final GetCharactersUseCase _getCharactersUseCase;

  CharactersListCubit(this._getCharactersUseCase)
      : super(const CharactersListState.loading());

  Future<void> loadData() async {
    emit(const CharactersListState.loading());

    final response = await _getCharactersUseCase();

    response.fold(
      (_) => emit(const CharactersListState.error()),
      (characters) => emit(CharactersListState.loaded(characters)),
    );
  }

  void search(String query) {
    final currentState = state;

    if (currentState is CharactersListLoadedState) {
      if (query.isEmpty) {
        emit(currentState.copyWith(searchResults: null));
      } else {
        emit(
          currentState.copyWith(
            searchResults:
                currentState.characters.where(_characterFilter(query)).toList(),
          ),
        );
      }
    }
  }

  bool Function(Character) _characterFilter(String query) {
    return (character) {
      final queryLower = query.toLowerCase();
      final nameLower = character.name.toLowerCase();
      final descriptionLower = character.description.toLowerCase();

      return nameLower.contains(queryLower) ||
          descriptionLower.contains(queryLower);
    };
  }
}
