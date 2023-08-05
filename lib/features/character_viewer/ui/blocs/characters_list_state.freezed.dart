// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'characters_list_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CharactersListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            List<Character> characters, List<Character>? searchResults)
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            List<Character> characters, List<Character>? searchResults)?
        loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            List<Character> characters, List<Character>? searchResults)?
        loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersListLoadingState value) loading,
    required TResult Function(_CharactersListErrorState value) error,
    required TResult Function(CharactersListLoadedState value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersListLoadingState value)? loading,
    TResult? Function(_CharactersListErrorState value)? error,
    TResult? Function(CharactersListLoadedState value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersListLoadingState value)? loading,
    TResult Function(_CharactersListErrorState value)? error,
    TResult Function(CharactersListLoadedState value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CharactersListStateCopyWith<$Res> {
  factory $CharactersListStateCopyWith(
          CharactersListState value, $Res Function(CharactersListState) then) =
      _$CharactersListStateCopyWithImpl<$Res, CharactersListState>;
}

/// @nodoc
class _$CharactersListStateCopyWithImpl<$Res, $Val extends CharactersListState>
    implements $CharactersListStateCopyWith<$Res> {
  _$CharactersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CharactersListLoadingStateCopyWith<$Res> {
  factory _$$_CharactersListLoadingStateCopyWith(
          _$_CharactersListLoadingState value,
          $Res Function(_$_CharactersListLoadingState) then) =
      __$$_CharactersListLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharactersListLoadingStateCopyWithImpl<$Res>
    extends _$CharactersListStateCopyWithImpl<$Res,
        _$_CharactersListLoadingState>
    implements _$$_CharactersListLoadingStateCopyWith<$Res> {
  __$$_CharactersListLoadingStateCopyWithImpl(
      _$_CharactersListLoadingState _value,
      $Res Function(_$_CharactersListLoadingState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CharactersListLoadingState extends _CharactersListLoadingState {
  const _$_CharactersListLoadingState() : super._();

  @override
  String toString() {
    return 'CharactersListState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersListLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            List<Character> characters, List<Character>? searchResults)
        loaded,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            List<Character> characters, List<Character>? searchResults)?
        loaded,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            List<Character> characters, List<Character>? searchResults)?
        loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersListLoadingState value) loading,
    required TResult Function(_CharactersListErrorState value) error,
    required TResult Function(CharactersListLoadedState value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersListLoadingState value)? loading,
    TResult? Function(_CharactersListErrorState value)? error,
    TResult? Function(CharactersListLoadedState value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersListLoadingState value)? loading,
    TResult Function(_CharactersListErrorState value)? error,
    TResult Function(CharactersListLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _CharactersListLoadingState extends CharactersListState {
  const factory _CharactersListLoadingState() = _$_CharactersListLoadingState;
  const _CharactersListLoadingState._() : super._();
}

/// @nodoc
abstract class _$$_CharactersListErrorStateCopyWith<$Res> {
  factory _$$_CharactersListErrorStateCopyWith(
          _$_CharactersListErrorState value,
          $Res Function(_$_CharactersListErrorState) then) =
      __$$_CharactersListErrorStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CharactersListErrorStateCopyWithImpl<$Res>
    extends _$CharactersListStateCopyWithImpl<$Res, _$_CharactersListErrorState>
    implements _$$_CharactersListErrorStateCopyWith<$Res> {
  __$$_CharactersListErrorStateCopyWithImpl(_$_CharactersListErrorState _value,
      $Res Function(_$_CharactersListErrorState) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CharactersListErrorState extends _CharactersListErrorState {
  const _$_CharactersListErrorState() : super._();

  @override
  String toString() {
    return 'CharactersListState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CharactersListErrorState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            List<Character> characters, List<Character>? searchResults)
        loaded,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            List<Character> characters, List<Character>? searchResults)?
        loaded,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            List<Character> characters, List<Character>? searchResults)?
        loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersListLoadingState value) loading,
    required TResult Function(_CharactersListErrorState value) error,
    required TResult Function(CharactersListLoadedState value) loaded,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersListLoadingState value)? loading,
    TResult? Function(_CharactersListErrorState value)? error,
    TResult? Function(CharactersListLoadedState value)? loaded,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersListLoadingState value)? loading,
    TResult Function(_CharactersListErrorState value)? error,
    TResult Function(CharactersListLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _CharactersListErrorState extends CharactersListState {
  const factory _CharactersListErrorState() = _$_CharactersListErrorState;
  const _CharactersListErrorState._() : super._();
}

/// @nodoc
abstract class _$$CharactersListLoadedStateCopyWith<$Res> {
  factory _$$CharactersListLoadedStateCopyWith(
          _$CharactersListLoadedState value,
          $Res Function(_$CharactersListLoadedState) then) =
      __$$CharactersListLoadedStateCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Character> characters, List<Character>? searchResults});
}

/// @nodoc
class __$$CharactersListLoadedStateCopyWithImpl<$Res>
    extends _$CharactersListStateCopyWithImpl<$Res, _$CharactersListLoadedState>
    implements _$$CharactersListLoadedStateCopyWith<$Res> {
  __$$CharactersListLoadedStateCopyWithImpl(_$CharactersListLoadedState _value,
      $Res Function(_$CharactersListLoadedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? characters = null,
    Object? searchResults = freezed,
  }) {
    return _then(_$CharactersListLoadedState(
      null == characters
          ? _value._characters
          : characters // ignore: cast_nullable_to_non_nullable
              as List<Character>,
      searchResults: freezed == searchResults
          ? _value._searchResults
          : searchResults // ignore: cast_nullable_to_non_nullable
              as List<Character>?,
    ));
  }
}

/// @nodoc

class _$CharactersListLoadedState extends CharactersListLoadedState {
  const _$CharactersListLoadedState(final List<Character> characters,
      {final List<Character>? searchResults})
      : _characters = characters,
        _searchResults = searchResults,
        super._();

  final List<Character> _characters;
  @override
  List<Character> get characters {
    if (_characters is EqualUnmodifiableListView) return _characters;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_characters);
  }

  final List<Character>? _searchResults;
  @override
  List<Character>? get searchResults {
    final value = _searchResults;
    if (value == null) return null;
    if (_searchResults is EqualUnmodifiableListView) return _searchResults;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CharactersListState.loaded(characters: $characters, searchResults: $searchResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CharactersListLoadedState &&
            const DeepCollectionEquality()
                .equals(other._characters, _characters) &&
            const DeepCollectionEquality()
                .equals(other._searchResults, _searchResults));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_characters),
      const DeepCollectionEquality().hash(_searchResults));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CharactersListLoadedStateCopyWith<_$CharactersListLoadedState>
      get copyWith => __$$CharactersListLoadedStateCopyWithImpl<
          _$CharactersListLoadedState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function() error,
    required TResult Function(
            List<Character> characters, List<Character>? searchResults)
        loaded,
  }) {
    return loaded(characters, searchResults);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function()? error,
    TResult? Function(
            List<Character> characters, List<Character>? searchResults)?
        loaded,
  }) {
    return loaded?.call(characters, searchResults);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function()? error,
    TResult Function(
            List<Character> characters, List<Character>? searchResults)?
        loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(characters, searchResults);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CharactersListLoadingState value) loading,
    required TResult Function(_CharactersListErrorState value) error,
    required TResult Function(CharactersListLoadedState value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CharactersListLoadingState value)? loading,
    TResult? Function(_CharactersListErrorState value)? error,
    TResult? Function(CharactersListLoadedState value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CharactersListLoadingState value)? loading,
    TResult Function(_CharactersListErrorState value)? error,
    TResult Function(CharactersListLoadedState value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class CharactersListLoadedState extends CharactersListState {
  const factory CharactersListLoadedState(final List<Character> characters,
      {final List<Character>? searchResults}) = _$CharactersListLoadedState;
  const CharactersListLoadedState._() : super._();

  List<Character> get characters;
  List<Character>? get searchResults;
  @JsonKey(ignore: true)
  _$$CharactersListLoadedStateCopyWith<_$CharactersListLoadedState>
      get copyWith => throw _privateConstructorUsedError;
}
