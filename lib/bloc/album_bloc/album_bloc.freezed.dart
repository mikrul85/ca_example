// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'album_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AlbumEvent {
  int get userId => throw _privateConstructorUsedError;
  Album get album => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, Album album) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId, Album album)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, Album album)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenAlbumViewEvent value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenAlbumViewEvent value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenAlbumViewEvent value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AlbumEventCopyWith<AlbumEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumEventCopyWith<$Res> {
  factory $AlbumEventCopyWith(
          AlbumEvent value, $Res Function(AlbumEvent) then) =
      _$AlbumEventCopyWithImpl<$Res>;
  $Res call({int userId, Album album});
}

/// @nodoc
class _$AlbumEventCopyWithImpl<$Res> implements $AlbumEventCopyWith<$Res> {
  _$AlbumEventCopyWithImpl(this._value, this._then);

  final AlbumEvent _value;
  // ignore: unused_field
  final $Res Function(AlbumEvent) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? album = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
    ));
  }
}

/// @nodoc
abstract class _$$OpenAlbumViewEventCopyWith<$Res>
    implements $AlbumEventCopyWith<$Res> {
  factory _$$OpenAlbumViewEventCopyWith(_$OpenAlbumViewEvent value,
          $Res Function(_$OpenAlbumViewEvent) then) =
      __$$OpenAlbumViewEventCopyWithImpl<$Res>;
  @override
  $Res call({int userId, Album album});
}

/// @nodoc
class __$$OpenAlbumViewEventCopyWithImpl<$Res>
    extends _$AlbumEventCopyWithImpl<$Res>
    implements _$$OpenAlbumViewEventCopyWith<$Res> {
  __$$OpenAlbumViewEventCopyWithImpl(
      _$OpenAlbumViewEvent _value, $Res Function(_$OpenAlbumViewEvent) _then)
      : super(_value, (v) => _then(v as _$OpenAlbumViewEvent));

  @override
  _$OpenAlbumViewEvent get _value => super._value as _$OpenAlbumViewEvent;

  @override
  $Res call({
    Object? userId = freezed,
    Object? album = freezed,
  }) {
    return _then(_$OpenAlbumViewEvent(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as Album,
    ));
  }
}

/// @nodoc

class _$OpenAlbumViewEvent implements OpenAlbumViewEvent {
  const _$OpenAlbumViewEvent({required this.userId, required this.album});

  @override
  final int userId;
  @override
  final Album album;

  @override
  String toString() {
    return 'AlbumEvent.started(userId: $userId, album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenAlbumViewEvent &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.album, album));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(album));

  @JsonKey(ignore: true)
  @override
  _$$OpenAlbumViewEventCopyWith<_$OpenAlbumViewEvent> get copyWith =>
      __$$OpenAlbumViewEventCopyWithImpl<_$OpenAlbumViewEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int userId, Album album) started,
  }) {
    return started(userId, album);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int userId, Album album)? started,
  }) {
    return started?.call(userId, album);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int userId, Album album)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(userId, album);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenAlbumViewEvent value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenAlbumViewEvent value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenAlbumViewEvent value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class OpenAlbumViewEvent implements AlbumEvent {
  const factory OpenAlbumViewEvent(
      {required final int userId,
      required final Album album}) = _$OpenAlbumViewEvent;

  @override
  int get userId;
  @override
  Album get album;
  @override
  @JsonKey(ignore: true)
  _$$OpenAlbumViewEventCopyWith<_$OpenAlbumViewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AlbumState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AlbumWithPhotos album) received,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumLoadingState value) loading,
    required TResult Function(_AlbumReceivedState value) received,
    required TResult Function(_AlbumFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AlbumStateCopyWith<$Res> {
  factory $AlbumStateCopyWith(
          AlbumState value, $Res Function(AlbumState) then) =
      _$AlbumStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AlbumStateCopyWithImpl<$Res> implements $AlbumStateCopyWith<$Res> {
  _$AlbumStateCopyWithImpl(this._value, this._then);

  final AlbumState _value;
  // ignore: unused_field
  final $Res Function(AlbumState) _then;
}

/// @nodoc
abstract class _$$_AlbumInitialStateCopyWith<$Res> {
  factory _$$_AlbumInitialStateCopyWith(_$_AlbumInitialState value,
          $Res Function(_$_AlbumInitialState) then) =
      __$$_AlbumInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlbumInitialStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res>
    implements _$$_AlbumInitialStateCopyWith<$Res> {
  __$$_AlbumInitialStateCopyWithImpl(
      _$_AlbumInitialState _value, $Res Function(_$_AlbumInitialState) _then)
      : super(_value, (v) => _then(v as _$_AlbumInitialState));

  @override
  _$_AlbumInitialState get _value => super._value as _$_AlbumInitialState;
}

/// @nodoc

class _$_AlbumInitialState implements _AlbumInitialState {
  const _$_AlbumInitialState();

  @override
  String toString() {
    return 'AlbumState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlbumInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AlbumWithPhotos album) received,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumLoadingState value) loading,
    required TResult Function(_AlbumReceivedState value) received,
    required TResult Function(_AlbumFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AlbumInitialState implements AlbumState {
  const factory _AlbumInitialState() = _$_AlbumInitialState;
}

/// @nodoc
abstract class _$$_AlbumLoadingStateCopyWith<$Res> {
  factory _$$_AlbumLoadingStateCopyWith(_$_AlbumLoadingState value,
          $Res Function(_$_AlbumLoadingState) then) =
      __$$_AlbumLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AlbumLoadingStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res>
    implements _$$_AlbumLoadingStateCopyWith<$Res> {
  __$$_AlbumLoadingStateCopyWithImpl(
      _$_AlbumLoadingState _value, $Res Function(_$_AlbumLoadingState) _then)
      : super(_value, (v) => _then(v as _$_AlbumLoadingState));

  @override
  _$_AlbumLoadingState get _value => super._value as _$_AlbumLoadingState;
}

/// @nodoc

class _$_AlbumLoadingState implements _AlbumLoadingState {
  const _$_AlbumLoadingState();

  @override
  String toString() {
    return 'AlbumState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AlbumLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AlbumWithPhotos album) received,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
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
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumLoadingState value) loading,
    required TResult Function(_AlbumReceivedState value) received,
    required TResult Function(_AlbumFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AlbumLoadingState implements AlbumState {
  const factory _AlbumLoadingState() = _$_AlbumLoadingState;
}

/// @nodoc
abstract class _$$_AlbumReceivedStateCopyWith<$Res> {
  factory _$$_AlbumReceivedStateCopyWith(_$_AlbumReceivedState value,
          $Res Function(_$_AlbumReceivedState) then) =
      __$$_AlbumReceivedStateCopyWithImpl<$Res>;
  $Res call({AlbumWithPhotos album});
}

/// @nodoc
class __$$_AlbumReceivedStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res>
    implements _$$_AlbumReceivedStateCopyWith<$Res> {
  __$$_AlbumReceivedStateCopyWithImpl(
      _$_AlbumReceivedState _value, $Res Function(_$_AlbumReceivedState) _then)
      : super(_value, (v) => _then(v as _$_AlbumReceivedState));

  @override
  _$_AlbumReceivedState get _value => super._value as _$_AlbumReceivedState;

  @override
  $Res call({
    Object? album = freezed,
  }) {
    return _then(_$_AlbumReceivedState(
      album: album == freezed
          ? _value.album
          : album // ignore: cast_nullable_to_non_nullable
              as AlbumWithPhotos,
    ));
  }
}

/// @nodoc

class _$_AlbumReceivedState implements _AlbumReceivedState {
  const _$_AlbumReceivedState({required this.album});

  @override
  final AlbumWithPhotos album;

  @override
  String toString() {
    return 'AlbumState.received(album: $album)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumReceivedState &&
            const DeepCollectionEquality().equals(other.album, album));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(album));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumReceivedStateCopyWith<_$_AlbumReceivedState> get copyWith =>
      __$$_AlbumReceivedStateCopyWithImpl<_$_AlbumReceivedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AlbumWithPhotos album) received,
    required TResult Function(String error) failure,
  }) {
    return received(album);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
  }) {
    return received?.call(album);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(album);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumLoadingState value) loading,
    required TResult Function(_AlbumReceivedState value) received,
    required TResult Function(_AlbumFailureState value) failure,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
  }) {
    return received?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _AlbumReceivedState implements AlbumState {
  const factory _AlbumReceivedState({required final AlbumWithPhotos album}) =
      _$_AlbumReceivedState;

  AlbumWithPhotos get album;
  @JsonKey(ignore: true)
  _$$_AlbumReceivedStateCopyWith<_$_AlbumReceivedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AlbumFailureStateCopyWith<$Res> {
  factory _$$_AlbumFailureStateCopyWith(_$_AlbumFailureState value,
          $Res Function(_$_AlbumFailureState) then) =
      __$$_AlbumFailureStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_AlbumFailureStateCopyWithImpl<$Res>
    extends _$AlbumStateCopyWithImpl<$Res>
    implements _$$_AlbumFailureStateCopyWith<$Res> {
  __$$_AlbumFailureStateCopyWithImpl(
      _$_AlbumFailureState _value, $Res Function(_$_AlbumFailureState) _then)
      : super(_value, (v) => _then(v as _$_AlbumFailureState));

  @override
  _$_AlbumFailureState get _value => super._value as _$_AlbumFailureState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_AlbumFailureState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AlbumFailureState implements _AlbumFailureState {
  const _$_AlbumFailureState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'AlbumState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AlbumFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_AlbumFailureStateCopyWith<_$_AlbumFailureState> get copyWith =>
      __$$_AlbumFailureStateCopyWithImpl<_$_AlbumFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(AlbumWithPhotos album) received,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(AlbumWithPhotos album)? received,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AlbumInitialState value) initial,
    required TResult Function(_AlbumLoadingState value) loading,
    required TResult Function(_AlbumReceivedState value) received,
    required TResult Function(_AlbumFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AlbumInitialState value)? initial,
    TResult Function(_AlbumLoadingState value)? loading,
    TResult Function(_AlbumReceivedState value)? received,
    TResult Function(_AlbumFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _AlbumFailureState implements AlbumState {
  const factory _AlbumFailureState({required final String error}) =
      _$_AlbumFailureState;

  String get error;
  @JsonKey(ignore: true)
  _$$_AlbumFailureStateCopyWith<_$_AlbumFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
