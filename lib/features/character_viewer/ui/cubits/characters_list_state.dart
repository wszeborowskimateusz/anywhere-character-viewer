import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'characters_list_state.freezed.dart';

@freezed
class CharactersListState with _$CharactersListState {
  const CharactersListState._();

  const factory CharactersListState.loading() = _CharactersListLoadingState;

  const factory CharactersListState.error() = _CharactersListErrorState;

  const factory CharactersListState.loaded(
    List<Character> characters, {
    List<Character>? searchResults,
  }) = CharactersListLoadedState;
}
