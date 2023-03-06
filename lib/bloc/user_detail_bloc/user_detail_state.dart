part of 'user_detail_bloc.dart';

@freezed
class UserDetailState with _$UserDetailState {
  const factory UserDetailState.initial() = _UserDetailInitialState;
  const factory UserDetailState.loading() = _UserDetailLoadingState;
  const factory UserDetailState.received({
    required List<Post> listPosts,
    required List<Album> listAlbums,
    required List<Thumbnail> listTn,
  }) = _UserDetailReceivedState;
  const factory UserDetailState.failure({required String error}) =
      _UserDetailFailureState;
}
