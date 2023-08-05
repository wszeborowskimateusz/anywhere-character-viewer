import 'package:anywhere_character_viewer/core/errors/failures.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/data_sources/characters_remote_data_source.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/dtos/query_response_dto.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class CharactersRepository {
  final CharactersRemoteDataSource _remoteDataSource;

  CharactersRepository(this._remoteDataSource);

  Future<Either<Failure, QueryResponseDto>> fetchCharacters(
    String charactersQuery,
  ) async {
    try {
      return Right(await _remoteDataSource.fetchCharacters(charactersQuery));
    } catch (_) {
      return const Left(GeneralFailure('fetchCharacters'));
    }
  }
}
