part of 'album_bloc.dart';

@freezed
class AlbumState with _$AlbumState {
  const factory AlbumState.initial() = _AlbumInitialState;
  const factory AlbumState.loading() = _AlbumLoadingState;
  const factory AlbumState.received({required AlbumWithPhotos album}) =
      _AlbumReceivedState;
  const factory AlbumState.failure({required String error}) =
      _AlbumFailureState;
}
