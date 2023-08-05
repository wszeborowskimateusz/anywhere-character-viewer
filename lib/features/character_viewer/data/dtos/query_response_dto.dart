import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_response_dto.freezed.dart';
part 'query_response_dto.g.dart';

@freezed
class QueryResponseDto with _$QueryResponseDto {
  const factory QueryResponseDto({
    @Default([])
    @JsonKey(name: 'RelatedTopics')
    List<QueryResponseRelatedTopicDto> relatedTopics,
  }) = _QueryResponseDto;

  factory QueryResponseDto.fromJson(Map<String, Object?> json) =>
      _$QueryResponseDtoFromJson(json);
}

@freezed
class QueryResponseRelatedTopicDto with _$QueryResponseRelatedTopicDto {
  const factory QueryResponseRelatedTopicDto({
    @Default('') @JsonKey(name: 'Result') String result,
    @Default('') @JsonKey(name: 'Text') String text,
    @JsonKey(name: 'Icon') QueryResponseRelatedTopicIconDto? icon,
  }) = _QueryResponseRelatedTopicDto;

  factory QueryResponseRelatedTopicDto.fromJson(Map<String, Object?> json) =>
      _$QueryResponseRelatedTopicDtoFromJson(json);
}

@freezed
class QueryResponseRelatedTopicIconDto with _$QueryResponseRelatedTopicIconDto {
  const factory QueryResponseRelatedTopicIconDto({
    @Default('') @JsonKey(name: 'URL') String url,
  }) = _QueryResponseRelatedTopicIconDto;

  factory QueryResponseRelatedTopicIconDto.fromJson(
    Map<String, Object?> json,
  ) =>
      _$QueryResponseRelatedTopicIconDtoFromJson(json);
}
