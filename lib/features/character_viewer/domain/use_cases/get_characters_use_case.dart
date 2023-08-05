import 'package:anywhere_character_viewer/core/environment/environment_variables.dart';
import 'package:anywhere_character_viewer/core/errors/failures.dart';
import 'package:anywhere_character_viewer/core/use_case/use_case.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/repositories/characters_repository.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_from_query_response_dto_use_case.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetCharactersUseCase
    extends UseCase<Future<Either<Failure, List<Character>>>, NoParams?> {
  final GetCharactersFromQueryResponseDtoUseCase
      _getCharactersFromQueryResponseDtoUseCase;
  final CharactersRepository _charactersRepository;
  final EnvironmentVariables _environmentVariables;

  GetCharactersUseCase(
    this._getCharactersFromQueryResponseDtoUseCase,
    this._charactersRepository,
    this._environmentVariables,
  );

  @override
  Future<Either<Failure, List<Character>>> call([_]) async {
    final charactersQuery = _environmentVariables.charactersQuery;

    final response = await _charactersRepository.fetchCharacters(
      charactersQuery,
    );

    return response.fold(
      Left.new,
      (dto) => Right(_getCharactersFromQueryResponseDtoUseCase(dto)),
    );
  }
}
