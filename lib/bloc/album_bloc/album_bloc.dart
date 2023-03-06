import 'package:bloc/bloc.dart';
import 'package:ca_example/data/models/user/album/album_model.dart';
import 'package:ca_example/data/models/user/album/thumbnail/thumbnail_model.dart';
import 'package:ca_example/data/models/user/albumWithPhoto/album_photos_model.dart';
import 'package:ca_example/data/models/user/post/post_model.dart';
import 'package:ca_example/data/services/album_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'album_event.dart';
part 'album_state.dart';
part 'album_bloc.freezed.dart';

class AlbumBloc extends Bloc<AlbumEvent, AlbumState> {
  final IAlbumService albumService;
  AlbumBloc({required this.albumService}) : super(const AlbumState.initial()) {
    on<OpenAlbumViewEvent>(_onOpenAlbum);
  }

  Future<void> _onOpenAlbum(
    OpenAlbumViewEvent event,
    Emitter<AlbumState> emit,
  ) async {
    try {
      emit(const AlbumState.loading());
      AlbumWithPhotos album =
          await albumService.getAlbumWithPhoto(event.album.id, event.userId);
      emit(AlbumState.received(album: album));
    } catch (e) {
      emit(AlbumState.failure(error: 'Произошла ошибка получения данных: $e'));
    }
  }
}
