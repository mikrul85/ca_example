// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserDetailEvent {
  String get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenUserDetailViewEvent value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenUserDetailViewEvent value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenUserDetailViewEvent value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserDetailEventCopyWith<UserDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailEventCopyWith<$Res> {
  factory $UserDetailEventCopyWith(
          UserDetailEvent value, $Res Function(UserDetailEvent) then) =
      _$UserDetailEventCopyWithImpl<$Res>;
  $Res call({String id});
}

/// @nodoc
class _$UserDetailEventCopyWithImpl<$Res>
    implements $UserDetailEventCopyWith<$Res> {
  _$UserDetailEventCopyWithImpl(this._value, this._then);

  final UserDetailEvent _value;
  // ignore: unused_field
  final $Res Function(UserDetailEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$OpenUserDetailViewEventCopyWith<$Res>
    implements $UserDetailEventCopyWith<$Res> {
  factory _$$OpenUserDetailViewEventCopyWith(_$OpenUserDetailViewEvent value,
          $Res Function(_$OpenUserDetailViewEvent) then) =
      __$$OpenUserDetailViewEventCopyWithImpl<$Res>;
  @override
  $Res call({String id});
}

/// @nodoc
class __$$OpenUserDetailViewEventCopyWithImpl<$Res>
    extends _$UserDetailEventCopyWithImpl<$Res>
    implements _$$OpenUserDetailViewEventCopyWith<$Res> {
  __$$OpenUserDetailViewEventCopyWithImpl(_$OpenUserDetailViewEvent _value,
      $Res Function(_$OpenUserDetailViewEvent) _then)
      : super(_value, (v) => _then(v as _$OpenUserDetailViewEvent));

  @override
  _$OpenUserDetailViewEvent get _value =>
      super._value as _$OpenUserDetailViewEvent;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$OpenUserDetailViewEvent(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OpenUserDetailViewEvent implements OpenUserDetailViewEvent {
  const _$OpenUserDetailViewEvent({required this.id});

  @override
  final String id;

  @override
  String toString() {
    return 'UserDetailEvent.started(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenUserDetailViewEvent &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$OpenUserDetailViewEventCopyWith<_$OpenUserDetailViewEvent> get copyWith =>
      __$$OpenUserDetailViewEventCopyWithImpl<_$OpenUserDetailViewEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String id) started,
  }) {
    return started(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String id)? started,
  }) {
    return started?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String id)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenUserDetailViewEvent value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenUserDetailViewEvent value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenUserDetailViewEvent value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class OpenUserDetailViewEvent implements UserDetailEvent {
  const factory OpenUserDetailViewEvent({required final String id}) =
      _$OpenUserDetailViewEvent;

  @override
  String get id;
  @override
  @JsonKey(ignore: true)
  _$$OpenUserDetailViewEventCopyWith<_$OpenUserDetailViewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UserDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)
        received,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDetailInitialState value) initial,
    required TResult Function(_UserDetailLoadingState value) loading,
    required TResult Function(_UserDetailReceivedState value) received,
    required TResult Function(_UserDetailFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDetailStateCopyWith<$Res> {
  factory $UserDetailStateCopyWith(
          UserDetailState value, $Res Function(UserDetailState) then) =
      _$UserDetailStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UserDetailStateCopyWithImpl<$Res>
    implements $UserDetailStateCopyWith<$Res> {
  _$UserDetailStateCopyWithImpl(this._value, this._then);

  final UserDetailState _value;
  // ignore: unused_field
  final $Res Function(UserDetailState) _then;
}

/// @nodoc
abstract class _$$_UserDetailInitialStateCopyWith<$Res> {
  factory _$$_UserDetailInitialStateCopyWith(_$_UserDetailInitialState value,
          $Res Function(_$_UserDetailInitialState) then) =
      __$$_UserDetailInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserDetailInitialStateCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res>
    implements _$$_UserDetailInitialStateCopyWith<$Res> {
  __$$_UserDetailInitialStateCopyWithImpl(_$_UserDetailInitialState _value,
      $Res Function(_$_UserDetailInitialState) _then)
      : super(_value, (v) => _then(v as _$_UserDetailInitialState));

  @override
  _$_UserDetailInitialState get _value =>
      super._value as _$_UserDetailInitialState;
}

/// @nodoc

class _$_UserDetailInitialState implements _UserDetailInitialState {
  const _$_UserDetailInitialState();

  @override
  String toString() {
    return 'UserDetailState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)
        received,
    required TResult Function(String error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
    TResult Function(String error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
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
    required TResult Function(_UserDetailInitialState value) initial,
    required TResult Function(_UserDetailLoadingState value) loading,
    required TResult Function(_UserDetailReceivedState value) received,
    required TResult Function(_UserDetailFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserDetailInitialState implements UserDetailState {
  const factory _UserDetailInitialState() = _$_UserDetailInitialState;
}

/// @nodoc
abstract class _$$_UserDetailLoadingStateCopyWith<$Res> {
  factory _$$_UserDetailLoadingStateCopyWith(_$_UserDetailLoadingState value,
          $Res Function(_$_UserDetailLoadingState) then) =
      __$$_UserDetailLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserDetailLoadingStateCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res>
    implements _$$_UserDetailLoadingStateCopyWith<$Res> {
  __$$_UserDetailLoadingStateCopyWithImpl(_$_UserDetailLoadingState _value,
      $Res Function(_$_UserDetailLoadingState) _then)
      : super(_value, (v) => _then(v as _$_UserDetailLoadingState));

  @override
  _$_UserDetailLoadingState get _value =>
      super._value as _$_UserDetailLoadingState;
}

/// @nodoc

class _$_UserDetailLoadingState implements _UserDetailLoadingState {
  const _$_UserDetailLoadingState();

  @override
  String toString() {
    return 'UserDetailState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)
        received,
    required TResult Function(String error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
    TResult Function(String error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
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
    required TResult Function(_UserDetailInitialState value) initial,
    required TResult Function(_UserDetailLoadingState value) loading,
    required TResult Function(_UserDetailReceivedState value) received,
    required TResult Function(_UserDetailFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserDetailLoadingState implements UserDetailState {
  const factory _UserDetailLoadingState() = _$_UserDetailLoadingState;
}

/// @nodoc
abstract class _$$_UserDetailReceivedStateCopyWith<$Res> {
  factory _$$_UserDetailReceivedStateCopyWith(_$_UserDetailReceivedState value,
          $Res Function(_$_UserDetailReceivedState) then) =
      __$$_UserDetailReceivedStateCopyWithImpl<$Res>;
  $Res call(
      {List<Post> listPosts, List<Album> listAlbums, List<Thumbnail> listTn});
}

/// @nodoc
class __$$_UserDetailReceivedStateCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res>
    implements _$$_UserDetailReceivedStateCopyWith<$Res> {
  __$$_UserDetailReceivedStateCopyWithImpl(_$_UserDetailReceivedState _value,
      $Res Function(_$_UserDetailReceivedState) _then)
      : super(_value, (v) => _then(v as _$_UserDetailReceivedState));

  @override
  _$_UserDetailReceivedState get _value =>
      super._value as _$_UserDetailReceivedState;

  @override
  $Res call({
    Object? listPosts = freezed,
    Object? listAlbums = freezed,
    Object? listTn = freezed,
  }) {
    return _then(_$_UserDetailReceivedState(
      listPosts: listPosts == freezed
          ? _value._listPosts
          : listPosts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      listAlbums: listAlbums == freezed
          ? _value._listAlbums
          : listAlbums // ignore: cast_nullable_to_non_nullable
              as List<Album>,
      listTn: listTn == freezed
          ? _value._listTn
          : listTn // ignore: cast_nullable_to_non_nullable
              as List<Thumbnail>,
    ));
  }
}

/// @nodoc

class _$_UserDetailReceivedState implements _UserDetailReceivedState {
  const _$_UserDetailReceivedState(
      {required final List<Post> listPosts,
      required final List<Album> listAlbums,
      required final List<Thumbnail> listTn})
      : _listPosts = listPosts,
        _listAlbums = listAlbums,
        _listTn = listTn;

  final List<Post> _listPosts;
  @override
  List<Post> get listPosts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listPosts);
  }

  final List<Album> _listAlbums;
  @override
  List<Album> get listAlbums {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listAlbums);
  }

  final List<Thumbnail> _listTn;
  @override
  List<Thumbnail> get listTn {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listTn);
  }

  @override
  String toString() {
    return 'UserDetailState.received(listPosts: $listPosts, listAlbums: $listAlbums, listTn: $listTn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailReceivedState &&
            const DeepCollectionEquality()
                .equals(other._listPosts, _listPosts) &&
            const DeepCollectionEquality()
                .equals(other._listAlbums, _listAlbums) &&
            const DeepCollectionEquality().equals(other._listTn, _listTn));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listPosts),
      const DeepCollectionEquality().hash(_listAlbums),
      const DeepCollectionEquality().hash(_listTn));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailReceivedStateCopyWith<_$_UserDetailReceivedState>
      get copyWith =>
          __$$_UserDetailReceivedStateCopyWithImpl<_$_UserDetailReceivedState>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)
        received,
    required TResult Function(String error) failure,
  }) {
    return received(listPosts, listAlbums, listTn);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
    TResult Function(String error)? failure,
  }) {
    return received?.call(listPosts, listAlbums, listTn);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(listPosts, listAlbums, listTn);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserDetailInitialState value) initial,
    required TResult Function(_UserDetailLoadingState value) loading,
    required TResult Function(_UserDetailReceivedState value) received,
    required TResult Function(_UserDetailFailureState value) failure,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
  }) {
    return received?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _UserDetailReceivedState implements UserDetailState {
  const factory _UserDetailReceivedState(
      {required final List<Post> listPosts,
      required final List<Album> listAlbums,
      required final List<Thumbnail> listTn}) = _$_UserDetailReceivedState;

  List<Post> get listPosts;
  List<Album> get listAlbums;
  List<Thumbnail> get listTn;
  @JsonKey(ignore: true)
  _$$_UserDetailReceivedStateCopyWith<_$_UserDetailReceivedState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserDetailFailureStateCopyWith<$Res> {
  factory _$$_UserDetailFailureStateCopyWith(_$_UserDetailFailureState value,
          $Res Function(_$_UserDetailFailureState) then) =
      __$$_UserDetailFailureStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_UserDetailFailureStateCopyWithImpl<$Res>
    extends _$UserDetailStateCopyWithImpl<$Res>
    implements _$$_UserDetailFailureStateCopyWith<$Res> {
  __$$_UserDetailFailureStateCopyWithImpl(_$_UserDetailFailureState _value,
      $Res Function(_$_UserDetailFailureState) _then)
      : super(_value, (v) => _then(v as _$_UserDetailFailureState));

  @override
  _$_UserDetailFailureState get _value =>
      super._value as _$_UserDetailFailureState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_UserDetailFailureState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserDetailFailureState implements _UserDetailFailureState {
  const _$_UserDetailFailureState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UserDetailState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserDetailFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_UserDetailFailureStateCopyWith<_$_UserDetailFailureState> get copyWith =>
      __$$_UserDetailFailureStateCopyWithImpl<_$_UserDetailFailureState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)
        received,
    required TResult Function(String error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
    TResult Function(String error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Post> listPosts, List<Album> listAlbums,
            List<Thumbnail> listTn)?
        received,
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
    required TResult Function(_UserDetailInitialState value) initial,
    required TResult Function(_UserDetailLoadingState value) loading,
    required TResult Function(_UserDetailReceivedState value) received,
    required TResult Function(_UserDetailFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserDetailInitialState value)? initial,
    TResult Function(_UserDetailLoadingState value)? loading,
    TResult Function(_UserDetailReceivedState value)? received,
    TResult Function(_UserDetailFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _UserDetailFailureState implements UserDetailState {
  const factory _UserDetailFailureState({required final String error}) =
      _$_UserDetailFailureState;

  String get error;
  @JsonKey(ignore: true)
  _$$_UserDetailFailureStateCopyWith<_$_UserDetailFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
