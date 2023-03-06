part of 'album_bloc.dart';

@freezed
class AlbumEvent with _$AlbumEvent {
  const factory AlbumEvent.started(
      {required int userId, required Album album}) = OpenAlbumViewEvent;
}
