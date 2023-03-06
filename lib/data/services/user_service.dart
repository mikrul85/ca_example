import 'package:ca_example/data/api/user_api/user_api.dart';
import 'package:ca_example/data/api/user_sqlite_api/user_sqlite_api.dart';
import 'package:ca_example/data/models/user/album/album_model.dart';
import 'package:ca_example/data/models/user/album/thumbnail/thumbnail_model.dart';
import 'package:ca_example/data/models/user/photo/photo_model.dart';
import 'package:ca_example/data/models/user/post/post_model.dart';
import 'package:ca_example/data/models/user/user_model.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

abstract class IUserService {
  Map<String, bool> get getOpenedUsers;

  List<User> get getListUsers;

  void updateOpenedUsers(int userId);

  Future<List<User>> getUsers();

  Future<List<Post>> getUserPosts({required String userId});

  Future<List<Album>> getUserAlbums({required String userId});

  Future<List<Photo>> getAlbumPhotos({required String albumId});

  Future<List<Thumbnail>> getThumbnailList({required List<Album> listAlbums});
}

class UserService implements IUserService {
  final UserApi userApi = UserApi(Dio());
  final UserSqliteApi userSqliteApi = UserSqliteApi();

  @override
  Map<String, bool> get getOpenedUsers => _openedUsers;
  @override
  List<User> get getListUsers => _listUsers;

  final Map<String, bool> _openedUsers = <String, bool>{};
  final List<User> _listUsers = [];

  @override
  void updateOpenedUsers(int userId) {
    _openedUsers['$userId'] = true;
  }

  @override
  Future<List<User>> getUsers() async {
    List<User> usersFromSql = await userSqliteApi.getUsersFromSql();
    if (usersFromSql.isNotEmpty) {
      _listUsers.addAll(usersFromSql);
    } else {
      _listUsers.addAll(await userApi.getUsers());
      await userSqliteApi.setUsers(_listUsers);
    }
    return _listUsers;
  }

  @override
  Future<List<Post>> getUserPosts({required String userId}) async {
    final List<Post> listPosts = await userApi.getUserPosts(userId: userId);
    return listPosts;
  }

  @override
  Future<List<Album>> getUserAlbums({required String userId}) async {
    final List<Album> listAlbums = await userApi.getUserAlbums(userId: userId);
    return listAlbums;
  }

  @override
  Future<List<Photo>> getAlbumPhotos({required String albumId}) async {
    final List<Photo> listAlbums =
        await userApi.getAlbumPhotos(albumId: albumId);
    return listAlbums;
  }

  @override
  Future<List<Thumbnail>> getThumbnailList(
      {required List<Album> listAlbums}) async {
    List<Thumbnail> listTn = [];
    await Future.forEach(listAlbums, (Album album) async {
      List<Photo> listPhotos =
          await getAlbumPhotos(albumId: album.id.toString());
      listTn.add(
          Thumbnail(albumId: album.id, url: listPhotos.first.thumbnailUrl));
    });
    return listTn;
  }
}
