import 'package:ca_example/data/api/user_sqlite_api/user_sqlite_api.dart';
import 'package:ca_example/data/models/user/user_model.dart';
import 'package:ca_example/data/services/user_service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'users_bloc.freezed.dart';

part 'users_event.dart';
part 'users_state.dart';

class UsersBloc extends Bloc<UsersEvent, UsersState> {
  final IUserService userService;
  UsersBloc({required this.userService}) : super(const UsersState.initial()) {
    on<OpenUsersViewEvent>(_onOpenUsers);
    on<UpdateUsersViewEvent>(_onUpdateUsers);
  }

  Future<void> _onOpenUsers(
    OpenUsersViewEvent event,
    Emitter<UsersState> emit,
  ) async {
    try {
      emit(const UsersState.loading());
      List<User> listUsers = await userService.getUsers();
      emit(UsersState.received(
          listUsers: listUsers, listValues: userService.getOpenedUsers));
    } catch (e) {
      emit(UsersState.failure(error: 'Произошла ошибка получения данных: $e'));
    }
  }

  Future<void> _onUpdateUsers(
    UpdateUsersViewEvent event,
    Emitter<UsersState> emit,
  ) async {
    emit(const UsersState.loading());
    try {
      userService.updateOpenedUsers(event.userId);
      emit(UsersState.received(
          listUsers: userService.getListUsers,
          listValues: userService.getOpenedUsers));
    } catch (e) {
      emit(const UsersState.failure(
          error: 'Произошла ошибка обновления данных'));
    }
  }
}
