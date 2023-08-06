import 'package:anywhere_character_viewer/core/constants/constants.dart';
import 'package:anywhere_character_viewer/core/extensions/nullable_string_extensions.dart';
import 'package:anywhere_character_viewer/core/use_case/use_case.dart';
import 'package:anywhere_character_viewer/features/character_viewer/data/dtos/query_response_dto.dart';
import 'package:anywhere_character_viewer/features/character_viewer/domain/models/character.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetCharactersFromQueryResponseDtoUseCase
    extends UseCase<List<Character>, QueryResponseDto> {
  /// We are extracting name from [result] field. We expect the name to be
  /// a value inside an <a> tag
  static const _nameRegex = r'<a[^>]*>([^<]+)<\/a>';

  @override
  List<Character> call(QueryResponseDto dto) {
    final List<Character> response = [];

    for (final topic in dto.relatedTopics) {
      final name = _tryExtractingName(topic.result);
      final description = topic.text;
      final imagePath = topic.icon?.url;
      final imageUrl =
          imagePath.isBlank ? null : '${Constants.imageBasePath}$imagePath';

      if (name.isNotBlank && description.isNotBlank) {
        response.add(
          Character(
            name: name!,
            description: description,
            imageUrl: imageUrl,
          ),
        );
      }
    }

    return response;
  }

  String? _tryExtractingName(String result) {
    final regex = RegExp(_nameRegex);

    return regex.firstMatch(result)?.group(1);
  }
}
