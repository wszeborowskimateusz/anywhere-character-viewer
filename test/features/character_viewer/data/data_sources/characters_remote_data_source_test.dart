import 'dart:convert';

import 'package:anywhere_character_viewer/features/character_viewer/data/data_sources/characters_remote_data_source.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../../../../test_utils/mocks.dart';
import '../../../../test_utils/test_data.dart';

void main() {
  final Dio dioMock = DioMock();
  late final CharactersRemoteDataSource dataSource;

  setUpAll(() {
    dataSource = CharactersRemoteDataSource(dioMock);
  });

  group('fetchCharacters', () {
    test('Should properly parse dio response', () async {
      // Arrange
      when(() => dioMock.get<String>(captureAny())).thenAnswer(
        (_) async => Response(
          requestOptions: RequestOptions(path: ''),
          data: json.encode(tQueryResponseDto.toJson()),
        ),
      );

      // Act
      final response = await dataSource.fetchCharacters(tCharacterQuery);

      // Assert
      expect(response, tQueryResponseDto);
    });

    test('Should return error in case of error from dio', () async {
      // Arrange
      when(() => dioMock.get<String>(captureAny())).thenThrow(
        DioError(requestOptions: RequestOptions(path: '')),
      );

      // Act
      final response = dataSource.fetchCharacters(tCharacterQuery);

      // Assert
      expect(response, throwsA(isA<DioError>()));
    });
  });
}
