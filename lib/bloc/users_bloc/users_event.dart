part of 'users_bloc.dart';

@freezed
class UsersEvent with _$UsersEvent {
  const factory UsersEvent.start() = OpenUsersViewEvent;
  const factory UsersEvent.update({required int userId}) = UpdateUsersViewEvent;
}
