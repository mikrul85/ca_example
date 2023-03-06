// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'users_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UsersEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int userId) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int userId)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int userId)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenUsersViewEvent value) start,
    required TResult Function(UpdateUsersViewEvent value) update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenUsersViewEvent value)? start,
    TResult Function(UpdateUsersViewEvent value)? update,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenUsersViewEvent value)? start,
    TResult Function(UpdateUsersViewEvent value)? update,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersEventCopyWith<$Res> {
  factory $UsersEventCopyWith(
          UsersEvent value, $Res Function(UsersEvent) then) =
      _$UsersEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersEventCopyWithImpl<$Res> implements $UsersEventCopyWith<$Res> {
  _$UsersEventCopyWithImpl(this._value, this._then);

  final UsersEvent _value;
  // ignore: unused_field
  final $Res Function(UsersEvent) _then;
}

/// @nodoc
abstract class _$$OpenUsersViewEventCopyWith<$Res> {
  factory _$$OpenUsersViewEventCopyWith(_$OpenUsersViewEvent value,
          $Res Function(_$OpenUsersViewEvent) then) =
      __$$OpenUsersViewEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OpenUsersViewEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements _$$OpenUsersViewEventCopyWith<$Res> {
  __$$OpenUsersViewEventCopyWithImpl(
      _$OpenUsersViewEvent _value, $Res Function(_$OpenUsersViewEvent) _then)
      : super(_value, (v) => _then(v as _$OpenUsersViewEvent));

  @override
  _$OpenUsersViewEvent get _value => super._value as _$OpenUsersViewEvent;
}

/// @nodoc

class _$OpenUsersViewEvent implements OpenUsersViewEvent {
  const _$OpenUsersViewEvent();

  @override
  String toString() {
    return 'UsersEvent.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OpenUsersViewEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int userId) update,
  }) {
    return start();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int userId)? update,
  }) {
    return start?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int userId)? update,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenUsersViewEvent value) start,
    required TResult Function(UpdateUsersViewEvent value) update,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenUsersViewEvent value)? start,
    TResult Function(UpdateUsersViewEvent value)? update,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenUsersViewEvent value)? start,
    TResult Function(UpdateUsersViewEvent value)? update,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class OpenUsersViewEvent implements UsersEvent {
  const factory OpenUsersViewEvent() = _$OpenUsersViewEvent;
}

/// @nodoc
abstract class _$$UpdateUsersViewEventCopyWith<$Res> {
  factory _$$UpdateUsersViewEventCopyWith(_$UpdateUsersViewEvent value,
          $Res Function(_$UpdateUsersViewEvent) then) =
      __$$UpdateUsersViewEventCopyWithImpl<$Res>;
  $Res call({int userId});
}

/// @nodoc
class __$$UpdateUsersViewEventCopyWithImpl<$Res>
    extends _$UsersEventCopyWithImpl<$Res>
    implements _$$UpdateUsersViewEventCopyWith<$Res> {
  __$$UpdateUsersViewEventCopyWithImpl(_$UpdateUsersViewEvent _value,
      $Res Function(_$UpdateUsersViewEvent) _then)
      : super(_value, (v) => _then(v as _$UpdateUsersViewEvent));

  @override
  _$UpdateUsersViewEvent get _value => super._value as _$UpdateUsersViewEvent;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$UpdateUsersViewEvent(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateUsersViewEvent implements UpdateUsersViewEvent {
  const _$UpdateUsersViewEvent({required this.userId});

  @override
  final int userId;

  @override
  String toString() {
    return 'UsersEvent.update(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUsersViewEvent &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$$UpdateUsersViewEventCopyWith<_$UpdateUsersViewEvent> get copyWith =>
      __$$UpdateUsersViewEventCopyWithImpl<_$UpdateUsersViewEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() start,
    required TResult Function(int userId) update,
  }) {
    return update(userId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int userId)? update,
  }) {
    return update?.call(userId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? start,
    TResult Function(int userId)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(userId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenUsersViewEvent value) start,
    required TResult Function(UpdateUsersViewEvent value) update,
  }) {
    return update(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(OpenUsersViewEvent value)? start,
    TResult Function(UpdateUsersViewEvent value)? update,
  }) {
    return update?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenUsersViewEvent value)? start,
    TResult Function(UpdateUsersViewEvent value)? update,
    required TResult orElse(),
  }) {
    if (update != null) {
      return update(this);
    }
    return orElse();
  }
}

abstract class UpdateUsersViewEvent implements UsersEvent {
  const factory UpdateUsersViewEvent({required final int userId}) =
      _$UpdateUsersViewEvent;

  int get userId;
  @JsonKey(ignore: true)
  _$$UpdateUsersViewEventCopyWith<_$UpdateUsersViewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UsersState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> listUsers, Map<String, bool> listValues)
        received,
    required TResult Function(String error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
        received,
    TResult Function(String error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
        received,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserReceivedState value) received,
    required TResult Function(_UserFailureState value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UsersStateCopyWith<$Res> {
  factory $UsersStateCopyWith(
          UsersState value, $Res Function(UsersState) then) =
      _$UsersStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UsersStateCopyWithImpl<$Res> implements $UsersStateCopyWith<$Res> {
  _$UsersStateCopyWithImpl(this._value, this._then);

  final UsersState _value;
  // ignore: unused_field
  final $Res Function(UsersState) _then;
}

/// @nodoc
abstract class _$$_UserInitialStateCopyWith<$Res> {
  factory _$$_UserInitialStateCopyWith(
          _$_UserInitialState value, $Res Function(_$_UserInitialState) then) =
      __$$_UserInitialStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserInitialStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$$_UserInitialStateCopyWith<$Res> {
  __$$_UserInitialStateCopyWithImpl(
      _$_UserInitialState _value, $Res Function(_$_UserInitialState) _then)
      : super(_value, (v) => _then(v as _$_UserInitialState));

  @override
  _$_UserInitialState get _value => super._value as _$_UserInitialState;
}

/// @nodoc

class _$_UserInitialState implements _UserInitialState {
  const _$_UserInitialState();

  @override
  String toString() {
    return 'UsersState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserInitialState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> listUsers, Map<String, bool> listValues)
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
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
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
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserReceivedState value) received,
    required TResult Function(_UserFailureState value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _UserInitialState implements UsersState {
  const factory _UserInitialState() = _$_UserInitialState;
}

/// @nodoc
abstract class _$$_UserLoadingStateCopyWith<$Res> {
  factory _$$_UserLoadingStateCopyWith(
          _$_UserLoadingState value, $Res Function(_$_UserLoadingState) then) =
      __$$_UserLoadingStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UserLoadingStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$$_UserLoadingStateCopyWith<$Res> {
  __$$_UserLoadingStateCopyWithImpl(
      _$_UserLoadingState _value, $Res Function(_$_UserLoadingState) _then)
      : super(_value, (v) => _then(v as _$_UserLoadingState));

  @override
  _$_UserLoadingState get _value => super._value as _$_UserLoadingState;
}

/// @nodoc

class _$_UserLoadingState implements _UserLoadingState {
  const _$_UserLoadingState();

  @override
  String toString() {
    return 'UsersState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UserLoadingState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> listUsers, Map<String, bool> listValues)
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
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
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
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserReceivedState value) received,
    required TResult Function(_UserFailureState value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _UserLoadingState implements UsersState {
  const factory _UserLoadingState() = _$_UserLoadingState;
}

/// @nodoc
abstract class _$$_UserReceivedStateCopyWith<$Res> {
  factory _$$_UserReceivedStateCopyWith(_$_UserReceivedState value,
          $Res Function(_$_UserReceivedState) then) =
      __$$_UserReceivedStateCopyWithImpl<$Res>;
  $Res call({List<User> listUsers, Map<String, bool> listValues});
}

/// @nodoc
class __$$_UserReceivedStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$$_UserReceivedStateCopyWith<$Res> {
  __$$_UserReceivedStateCopyWithImpl(
      _$_UserReceivedState _value, $Res Function(_$_UserReceivedState) _then)
      : super(_value, (v) => _then(v as _$_UserReceivedState));

  @override
  _$_UserReceivedState get _value => super._value as _$_UserReceivedState;

  @override
  $Res call({
    Object? listUsers = freezed,
    Object? listValues = freezed,
  }) {
    return _then(_$_UserReceivedState(
      listUsers: listUsers == freezed
          ? _value._listUsers
          : listUsers // ignore: cast_nullable_to_non_nullable
              as List<User>,
      listValues: listValues == freezed
          ? _value._listValues
          : listValues // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>,
    ));
  }
}

/// @nodoc

class _$_UserReceivedState implements _UserReceivedState {
  const _$_UserReceivedState(
      {required final List<User> listUsers,
      required final Map<String, bool> listValues})
      : _listUsers = listUsers,
        _listValues = listValues;

  final List<User> _listUsers;
  @override
  List<User> get listUsers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listUsers);
  }

  final Map<String, bool> _listValues;
  @override
  Map<String, bool> get listValues {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_listValues);
  }

  @override
  String toString() {
    return 'UsersState.received(listUsers: $listUsers, listValues: $listValues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserReceivedState &&
            const DeepCollectionEquality()
                .equals(other._listUsers, _listUsers) &&
            const DeepCollectionEquality()
                .equals(other._listValues, _listValues));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_listUsers),
      const DeepCollectionEquality().hash(_listValues));

  @JsonKey(ignore: true)
  @override
  _$$_UserReceivedStateCopyWith<_$_UserReceivedState> get copyWith =>
      __$$_UserReceivedStateCopyWithImpl<_$_UserReceivedState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> listUsers, Map<String, bool> listValues)
        received,
    required TResult Function(String error) failure,
  }) {
    return received(listUsers, listValues);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
        received,
    TResult Function(String error)? failure,
  }) {
    return received?.call(listUsers, listValues);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
        received,
    TResult Function(String error)? failure,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(listUsers, listValues);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserReceivedState value) received,
    required TResult Function(_UserFailureState value) failure,
  }) {
    return received(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
  }) {
    return received?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (received != null) {
      return received(this);
    }
    return orElse();
  }
}

abstract class _UserReceivedState implements UsersState {
  const factory _UserReceivedState(
      {required final List<User> listUsers,
      required final Map<String, bool> listValues}) = _$_UserReceivedState;

  List<User> get listUsers;
  Map<String, bool> get listValues;
  @JsonKey(ignore: true)
  _$$_UserReceivedStateCopyWith<_$_UserReceivedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UserFailureStateCopyWith<$Res> {
  factory _$$_UserFailureStateCopyWith(
          _$_UserFailureState value, $Res Function(_$_UserFailureState) then) =
      __$$_UserFailureStateCopyWithImpl<$Res>;
  $Res call({String error});
}

/// @nodoc
class __$$_UserFailureStateCopyWithImpl<$Res>
    extends _$UsersStateCopyWithImpl<$Res>
    implements _$$_UserFailureStateCopyWith<$Res> {
  __$$_UserFailureStateCopyWithImpl(
      _$_UserFailureState _value, $Res Function(_$_UserFailureState) _then)
      : super(_value, (v) => _then(v as _$_UserFailureState));

  @override
  _$_UserFailureState get _value => super._value as _$_UserFailureState;

  @override
  $Res call({
    Object? error = freezed,
  }) {
    return _then(_$_UserFailureState(
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UserFailureState implements _UserFailureState {
  const _$_UserFailureState({required this.error});

  @override
  final String error;

  @override
  String toString() {
    return 'UsersState.failure(error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserFailureState &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_UserFailureStateCopyWith<_$_UserFailureState> get copyWith =>
      __$$_UserFailureStateCopyWithImpl<_$_UserFailureState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(
            List<User> listUsers, Map<String, bool> listValues)
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
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
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
    TResult Function(List<User> listUsers, Map<String, bool> listValues)?
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
    required TResult Function(_UserInitialState value) initial,
    required TResult Function(_UserLoadingState value) loading,
    required TResult Function(_UserReceivedState value) received,
    required TResult Function(_UserFailureState value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UserInitialState value)? initial,
    TResult Function(_UserLoadingState value)? loading,
    TResult Function(_UserReceivedState value)? received,
    TResult Function(_UserFailureState value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _UserFailureState implements UsersState {
  const factory _UserFailureState({required final String error}) =
      _$_UserFailureState;

  String get error;
  @JsonKey(ignore: true)
  _$$_UserFailureStateCopyWith<_$_UserFailureState> get copyWith =>
      throw _privateConstructorUsedError;
}
