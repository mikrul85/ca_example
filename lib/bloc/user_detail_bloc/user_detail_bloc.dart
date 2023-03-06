import 'package:bloc/bloc.dart';
import 'package:ca_example/data/models/user/album/album_model.dart';
import 'package:ca_example/data/models/user/album/thumbnail/thumbnail_model.dart';
import 'package:ca_example/data/models/user/post/post_model.dart';
import 'package:ca_example/data/services/user_service.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_detail_event.dart';
part 'user_detail_state.dart';
part 'user_detail_bloc.freezed.dart';

class UserDetailBloc extends Bloc<UserDetailEvent, UserDetailState> {
  final UserService userService;
  UserDetailBloc({required this.userService})
      : super(const UserDetailState.initial()) {
    on<OpenUserDetailViewEvent>(_onOpenUserDetail);
  }

  Future<void> _onOpenUserDetail(
    OpenUserDetailViewEvent event,
    Emitter<UserDetailState> emit,
  ) async {
    try {
      emit(const UserDetailState.loading());
      List<Post> listPosts = await userService.getUserPosts(userId: event.id);
      List<Album> listAlbums =
          await userService.getUserAlbums(userId: event.id);
      List<Thumbnail> listTn =
          await userService.getThumbnailList(listAlbums: listAlbums);
      emit(UserDetailState.received(
        listPosts: listPosts,
        listAlbums: listAlbums,
        listTn: listTn,
      ));
    } catch (e) {
      emit(const UserDetailState.failure(
          error: 'Произошла ошибка получения данных'));
    }
  }
}
