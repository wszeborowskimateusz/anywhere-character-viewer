import 'package:anywhere_character_viewer/core/errors/failures.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/data_sources/characters_remote_data_source.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/dtos/query_response_dto.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/repositories/characters_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks.dart';
import '../../../../test_utils/test_data.dart';

void main() {
  final CharactersRemoteDataSource dataSourceMock =
      CharactersRemoteDataSourceMock();
  late final CharactersRepository repository;

  setUpAll(() {
    repository = CharactersRepository(dataSourceMock);
  });

  group('fetchCharacters', () {
    test('Should properly react to returned data', () async {
      // Arrange
      when(() => dataSourceMock.fetchCharacters(tCharacterQuery)).thenAnswer(
        (_) async => tQueryResponseDto,
      );

      // Act
      final response = await repository.fetchCharacters(tCharacterQuery);

      // Assert
      expect(
        response,
        const Right<Failure, QueryResponseDto>(tQueryResponseDto),
      );
    });

    test('Should properly react to error', () async {
      // Arrange
      final error = DioError(requestOptions: RequestOptions(path: ''));
      when(() => dataSourceMock.fetchCharacters(tCharacterQuery)).thenThrow(
        error,
      );

      // Act
      final response = await repository.fetchCharacters(tCharacterQuery);

      // Assert
      expect(response.isLeft(), isTrue);
    });
  });
}
