import 'package:anywhere_character_viewer/core/errors/failures.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/dtos/query_response_dto.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';

const tCharacter = Character(
  name: 'Some name',
  description: 'some description',
);

const tCharacterQuery = 'some character query';

const tQueryResponseDto = QueryResponseDto(
  relatedTopics: [
    QueryResponseRelatedTopicDto(
      text: 'Some text',
      result: 'Some result',
      icon: QueryResponseRelatedTopicIconDto(url: 'some url'),
    ),
  ],
);

const tGeneralFailure = GeneralFailure('some method');
