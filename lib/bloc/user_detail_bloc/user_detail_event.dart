part of 'user_detail_bloc.dart';

@freezed
class UserDetailEvent with _$UserDetailEvent {
  const factory UserDetailEvent.started({required String id}) =
      OpenUserDetailViewEvent;
}
