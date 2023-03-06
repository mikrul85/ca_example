part of 'users_bloc.dart';

@freezed
class UsersState with _$UsersState {
  const factory UsersState.initial() = _UserInitialState;
  const factory UsersState.loading() = _UserLoadingState;
  const factory UsersState.received({
    required List<User> listUsers,
    required Map<String, bool> listValues,
  }) = _UserReceivedState;
  const factory UsersState.failure({required String error}) = _UserFailureState;
}
