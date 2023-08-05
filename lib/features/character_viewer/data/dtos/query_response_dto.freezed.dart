// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'query_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

QueryResponseDto _$QueryResponseDtoFromJson(Map<String, dynamic> json) {
  return _QueryResponseDto.fromJson(json);
}

/// @nodoc
mixin _$QueryResponseDto {
  @JsonKey(name: 'RelatedTopics')
  List<QueryResponseRelatedTopicDto> get relatedTopics =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryResponseDtoCopyWith<QueryResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResponseDtoCopyWith<$Res> {
  factory $QueryResponseDtoCopyWith(
          QueryResponseDto value, $Res Function(QueryResponseDto) then) =
      _$QueryResponseDtoCopyWithImpl<$Res, QueryResponseDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'RelatedTopics')
      List<QueryResponseRelatedTopicDto> relatedTopics});
}

/// @nodoc
class _$QueryResponseDtoCopyWithImpl<$Res, $Val extends QueryResponseDto>
    implements $QueryResponseDtoCopyWith<$Res> {
  _$QueryResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedTopics = null,
  }) {
    return _then(_value.copyWith(
      relatedTopics: null == relatedTopics
          ? _value.relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<QueryResponseRelatedTopicDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryResponseDtoCopyWith<$Res>
    implements $QueryResponseDtoCopyWith<$Res> {
  factory _$$_QueryResponseDtoCopyWith(
          _$_QueryResponseDto value, $Res Function(_$_QueryResponseDto) then) =
      __$$_QueryResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'RelatedTopics')
      List<QueryResponseRelatedTopicDto> relatedTopics});
}

/// @nodoc
class __$$_QueryResponseDtoCopyWithImpl<$Res>
    extends _$QueryResponseDtoCopyWithImpl<$Res, _$_QueryResponseDto>
    implements _$$_QueryResponseDtoCopyWith<$Res> {
  __$$_QueryResponseDtoCopyWithImpl(
      _$_QueryResponseDto _value, $Res Function(_$_QueryResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? relatedTopics = null,
  }) {
    return _then(_$_QueryResponseDto(
      relatedTopics: null == relatedTopics
          ? _value._relatedTopics
          : relatedTopics // ignore: cast_nullable_to_non_nullable
              as List<QueryResponseRelatedTopicDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueryResponseDto implements _QueryResponseDto {
  const _$_QueryResponseDto(
      {@JsonKey(name: 'RelatedTopics')
      final List<QueryResponseRelatedTopicDto> relatedTopics = const []})
      : _relatedTopics = relatedTopics;

  factory _$_QueryResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_QueryResponseDtoFromJson(json);

  final List<QueryResponseRelatedTopicDto> _relatedTopics;
  @override
  @JsonKey(name: 'RelatedTopics')
  List<QueryResponseRelatedTopicDto> get relatedTopics {
    if (_relatedTopics is EqualUnmodifiableListView) return _relatedTopics;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_relatedTopics);
  }

  @override
  String toString() {
    return 'QueryResponseDto(relatedTopics: $relatedTopics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryResponseDto &&
            const DeepCollectionEquality()
                .equals(other._relatedTopics, _relatedTopics));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_relatedTopics));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryResponseDtoCopyWith<_$_QueryResponseDto> get copyWith =>
      __$$_QueryResponseDtoCopyWithImpl<_$_QueryResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryResponseDtoToJson(
      this,
    );
  }
}

abstract class _QueryResponseDto implements QueryResponseDto {
  const factory _QueryResponseDto(
          {@JsonKey(name: 'RelatedTopics')
          final List<QueryResponseRelatedTopicDto> relatedTopics}) =
      _$_QueryResponseDto;

  factory _QueryResponseDto.fromJson(Map<String, dynamic> json) =
      _$_QueryResponseDto.fromJson;

  @override
  @JsonKey(name: 'RelatedTopics')
  List<QueryResponseRelatedTopicDto> get relatedTopics;
  @override
  @JsonKey(ignore: true)
  _$$_QueryResponseDtoCopyWith<_$_QueryResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

QueryResponseRelatedTopicDto _$QueryResponseRelatedTopicDtoFromJson(
    Map<String, dynamic> json) {
  return _QueryResponseRelatedTopicDto.fromJson(json);
}

/// @nodoc
mixin _$QueryResponseRelatedTopicDto {
  @JsonKey(name: 'Result')
  String get result => throw _privateConstructorUsedError;
  @JsonKey(name: 'Text')
  String get text => throw _privateConstructorUsedError;
  @JsonKey(name: 'Icon')
  QueryResponseRelatedTopicIconDto? get icon =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryResponseRelatedTopicDtoCopyWith<QueryResponseRelatedTopicDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResponseRelatedTopicDtoCopyWith<$Res> {
  factory $QueryResponseRelatedTopicDtoCopyWith(
          QueryResponseRelatedTopicDto value,
          $Res Function(QueryResponseRelatedTopicDto) then) =
      _$QueryResponseRelatedTopicDtoCopyWithImpl<$Res,
          QueryResponseRelatedTopicDto>;
  @useResult
  $Res call(
      {@JsonKey(name: 'Result') String result,
      @JsonKey(name: 'Text') String text,
      @JsonKey(name: 'Icon') QueryResponseRelatedTopicIconDto? icon});

  $QueryResponseRelatedTopicIconDtoCopyWith<$Res>? get icon;
}

/// @nodoc
class _$QueryResponseRelatedTopicDtoCopyWithImpl<$Res,
        $Val extends QueryResponseRelatedTopicDto>
    implements $QueryResponseRelatedTopicDtoCopyWith<$Res> {
  _$QueryResponseRelatedTopicDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? text = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as QueryResponseRelatedTopicIconDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QueryResponseRelatedTopicIconDtoCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $QueryResponseRelatedTopicIconDtoCopyWith<$Res>(_value.icon!,
        (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QueryResponseRelatedTopicDtoCopyWith<$Res>
    implements $QueryResponseRelatedTopicDtoCopyWith<$Res> {
  factory _$$_QueryResponseRelatedTopicDtoCopyWith(
          _$_QueryResponseRelatedTopicDto value,
          $Res Function(_$_QueryResponseRelatedTopicDto) then) =
      __$$_QueryResponseRelatedTopicDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'Result') String result,
      @JsonKey(name: 'Text') String text,
      @JsonKey(name: 'Icon') QueryResponseRelatedTopicIconDto? icon});

  @override
  $QueryResponseRelatedTopicIconDtoCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$_QueryResponseRelatedTopicDtoCopyWithImpl<$Res>
    extends _$QueryResponseRelatedTopicDtoCopyWithImpl<$Res,
        _$_QueryResponseRelatedTopicDto>
    implements _$$_QueryResponseRelatedTopicDtoCopyWith<$Res> {
  __$$_QueryResponseRelatedTopicDtoCopyWithImpl(
      _$_QueryResponseRelatedTopicDto _value,
      $Res Function(_$_QueryResponseRelatedTopicDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? result = null,
    Object? text = null,
    Object? icon = freezed,
  }) {
    return _then(_$_QueryResponseRelatedTopicDto(
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as QueryResponseRelatedTopicIconDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueryResponseRelatedTopicDto implements _QueryResponseRelatedTopicDto {
  const _$_QueryResponseRelatedTopicDto(
      {@JsonKey(name: 'Result') this.result = '',
      @JsonKey(name: 'Text') this.text = '',
      @JsonKey(name: 'Icon') this.icon});

  factory _$_QueryResponseRelatedTopicDto.fromJson(Map<String, dynamic> json) =>
      _$$_QueryResponseRelatedTopicDtoFromJson(json);

  @override
  @JsonKey(name: 'Result')
  final String result;
  @override
  @JsonKey(name: 'Text')
  final String text;
  @override
  @JsonKey(name: 'Icon')
  final QueryResponseRelatedTopicIconDto? icon;

  @override
  String toString() {
    return 'QueryResponseRelatedTopicDto(result: $result, text: $text, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryResponseRelatedTopicDto &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, result, text, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryResponseRelatedTopicDtoCopyWith<_$_QueryResponseRelatedTopicDto>
      get copyWith => __$$_QueryResponseRelatedTopicDtoCopyWithImpl<
          _$_QueryResponseRelatedTopicDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryResponseRelatedTopicDtoToJson(
      this,
    );
  }
}

abstract class _QueryResponseRelatedTopicDto
    implements QueryResponseRelatedTopicDto {
  const factory _QueryResponseRelatedTopicDto(
          {@JsonKey(name: 'Result') final String result,
          @JsonKey(name: 'Text') final String text,
          @JsonKey(name: 'Icon')
          final QueryResponseRelatedTopicIconDto? icon}) =
      _$_QueryResponseRelatedTopicDto;

  factory _QueryResponseRelatedTopicDto.fromJson(Map<String, dynamic> json) =
      _$_QueryResponseRelatedTopicDto.fromJson;

  @override
  @JsonKey(name: 'Result')
  String get result;
  @override
  @JsonKey(name: 'Text')
  String get text;
  @override
  @JsonKey(name: 'Icon')
  QueryResponseRelatedTopicIconDto? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_QueryResponseRelatedTopicDtoCopyWith<_$_QueryResponseRelatedTopicDto>
      get copyWith => throw _privateConstructorUsedError;
}

QueryResponseRelatedTopicIconDto _$QueryResponseRelatedTopicIconDtoFromJson(
    Map<String, dynamic> json) {
  return _QueryResponseRelatedTopicIconDto.fromJson(json);
}

/// @nodoc
mixin _$QueryResponseRelatedTopicIconDto {
  @JsonKey(name: 'URL')
  String get url => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QueryResponseRelatedTopicIconDtoCopyWith<QueryResponseRelatedTopicIconDto>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QueryResponseRelatedTopicIconDtoCopyWith<$Res> {
  factory $QueryResponseRelatedTopicIconDtoCopyWith(
          QueryResponseRelatedTopicIconDto value,
          $Res Function(QueryResponseRelatedTopicIconDto) then) =
      _$QueryResponseRelatedTopicIconDtoCopyWithImpl<$Res,
          QueryResponseRelatedTopicIconDto>;
  @useResult
  $Res call({@JsonKey(name: 'URL') String url});
}

/// @nodoc
class _$QueryResponseRelatedTopicIconDtoCopyWithImpl<$Res,
        $Val extends QueryResponseRelatedTopicIconDto>
    implements $QueryResponseRelatedTopicIconDtoCopyWith<$Res> {
  _$QueryResponseRelatedTopicIconDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_QueryResponseRelatedTopicIconDtoCopyWith<$Res>
    implements $QueryResponseRelatedTopicIconDtoCopyWith<$Res> {
  factory _$$_QueryResponseRelatedTopicIconDtoCopyWith(
          _$_QueryResponseRelatedTopicIconDto value,
          $Res Function(_$_QueryResponseRelatedTopicIconDto) then) =
      __$$_QueryResponseRelatedTopicIconDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'URL') String url});
}

/// @nodoc
class __$$_QueryResponseRelatedTopicIconDtoCopyWithImpl<$Res>
    extends _$QueryResponseRelatedTopicIconDtoCopyWithImpl<$Res,
        _$_QueryResponseRelatedTopicIconDto>
    implements _$$_QueryResponseRelatedTopicIconDtoCopyWith<$Res> {
  __$$_QueryResponseRelatedTopicIconDtoCopyWithImpl(
      _$_QueryResponseRelatedTopicIconDto _value,
      $Res Function(_$_QueryResponseRelatedTopicIconDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
  }) {
    return _then(_$_QueryResponseRelatedTopicIconDto(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_QueryResponseRelatedTopicIconDto
    implements _QueryResponseRelatedTopicIconDto {
  const _$_QueryResponseRelatedTopicIconDto(
      {@JsonKey(name: 'URL') this.url = ''});

  factory _$_QueryResponseRelatedTopicIconDto.fromJson(
          Map<String, dynamic> json) =>
      _$$_QueryResponseRelatedTopicIconDtoFromJson(json);

  @override
  @JsonKey(name: 'URL')
  final String url;

  @override
  String toString() {
    return 'QueryResponseRelatedTopicIconDto(url: $url)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QueryResponseRelatedTopicIconDto &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QueryResponseRelatedTopicIconDtoCopyWith<
          _$_QueryResponseRelatedTopicIconDto>
      get copyWith => __$$_QueryResponseRelatedTopicIconDtoCopyWithImpl<
          _$_QueryResponseRelatedTopicIconDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_QueryResponseRelatedTopicIconDtoToJson(
      this,
    );
  }
}

abstract class _QueryResponseRelatedTopicIconDto
    implements QueryResponseRelatedTopicIconDto {
  const factory _QueryResponseRelatedTopicIconDto(
          {@JsonKey(name: 'URL') final String url}) =
      _$_QueryResponseRelatedTopicIconDto;

  factory _QueryResponseRelatedTopicIconDto.fromJson(
      Map<String, dynamic> json) = _$_QueryResponseRelatedTopicIconDto.fromJson;

  @override
  @JsonKey(name: 'URL')
  String get url;
  @override
  @JsonKey(ignore: true)
  _$$_QueryResponseRelatedTopicIconDtoCopyWith<
          _$_QueryResponseRelatedTopicIconDto>
      get copyWith => throw _privateConstructorUsedError;
}
