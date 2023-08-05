import 'package:anywhere_character_viewer/core/constants/constants.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/dtos/query_response_dto.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/use_cases/get_characters_from_query_response_dto_use_case.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late final GetCharactersFromQueryResponseDtoUseCase useCase;

  setUpAll(() {
    useCase = GetCharactersFromQueryResponseDtoUseCase();
  });

  test('Should properly read dto values', () async {
    // Arrange
    const List<QueryResponseRelatedTopicDto> testExamples = [
      QueryResponseRelatedTopicDto(),
      QueryResponseRelatedTopicDto(result: 'asd'),
      QueryResponseRelatedTopicDto(text: 'asd'),
      QueryResponseRelatedTopicDto(result: 'asd', text: 'asd'),
      QueryResponseRelatedTopicDto(result: '<a>test</a>', text: 'asd'),
      QueryResponseRelatedTopicDto(
        result:
            '<a href="https://duckduckgo.com/Apu_Nahasapeemapetilan">Apu</a><br>',
        text: 'zxc',
      ),
      QueryResponseRelatedTopicDto(
        result: '<a>test</a>',
        text: 'asd',
        icon: QueryResponseRelatedTopicIconDto(),
      ),
      QueryResponseRelatedTopicDto(
        result: '<a>test</a>',
        text: 'asd',
        icon: QueryResponseRelatedTopicIconDto(url: '/url'),
      ),
    ];
    const responseDto = QueryResponseDto(relatedTopics: testExamples);
    const List<Character> expectedResponse = [
      // Results with empty result and text fields should be filtered out
      // Results with empty text field should be filtered out
      // Results with empty result field should be filtered out
      // Results with result field that cannot be parsed should be filtered out
      Character(name: 'test', description: 'asd'),
      Character(name: 'Apu', description: 'zxc'),
      Character(name: 'test', description: 'asd'),
      Character(
        name: 'test',
        description: 'asd',
        imageUrl: '${Constants.imageBasePath}/url',
      ),
    ];

    // Act
    final response = useCase(responseDto);

    // Assert
    expect(expectedResponse.length, response.length);
    for (int i = 0; i < response.length; i++) {
      expect(response[i], expectedResponse[i]);
    }
  });
}
