// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'query_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QueryResponseDto _$$_QueryResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_QueryResponseDto(
      relatedTopics: (json['RelatedTopics'] as List<dynamic>?)
              ?.map((e) => QueryResponseRelatedTopicDto.fromJson(
                  e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_QueryResponseDtoToJson(_$_QueryResponseDto instance) =>
    <String, dynamic>{
      'RelatedTopics': instance.relatedTopics,
    };

_$_QueryResponseRelatedTopicDto _$$_QueryResponseRelatedTopicDtoFromJson(
        Map<String, dynamic> json) =>
    _$_QueryResponseRelatedTopicDto(
      result: json['Result'] as String? ?? '',
      text: json['Text'] as String? ?? '',
      icon: json['Icon'] == null
          ? null
          : QueryResponseRelatedTopicIconDto.fromJson(
              json['Icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_QueryResponseRelatedTopicDtoToJson(
        _$_QueryResponseRelatedTopicDto instance) =>
    <String, dynamic>{
      'Result': instance.result,
      'Text': instance.text,
      'Icon': instance.icon,
    };

_$_QueryResponseRelatedTopicIconDto
    _$$_QueryResponseRelatedTopicIconDtoFromJson(Map<String, dynamic> json) =>
        _$_QueryResponseRelatedTopicIconDto(
          url: json['URL'] as String? ?? '',
        );

Map<String, dynamic> _$$_QueryResponseRelatedTopicIconDtoToJson(
        _$_QueryResponseRelatedTopicIconDto instance) =>
    <String, dynamic>{
      'URL': instance.url,
    };
