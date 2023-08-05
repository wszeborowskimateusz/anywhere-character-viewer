import 'dart:convert';

import 'package:anywhere_character_viewer/core/networking/endpoints.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/dtos/query_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class CharactersRemoteDataSource {
  final Dio _dio;

  CharactersRemoteDataSource(this._dio);

  Future<QueryResponseDto> fetchCharacters(String charactersQuery) async {
    final response = await _dio.get<String>(
      Endpoints.charactersSearch(charactersQuery),
    );

    final jsonData = json.decode(response.data!) as Map<String, dynamic>;

    return QueryResponseDto.fromJson(jsonData);
  }
}
