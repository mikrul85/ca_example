import 'package:ca_example/data/api/user_api/user_api.dart';
import 'package:ca_example/data/api/user_sqlite_api/user_sqlite_api.dart';
import 'package:ca_example/data/models/user/album/album_model.dart';
import 'package:ca_example/data/models/user/album/thumbnail/thumbnail_model.dart';
import 'package:ca_example/data/models/user/albumWithPhoto/album_photos_model.dart';
import 'package:ca_example/data/models/user/photo/photo_model.dart';
import 'package:dio/dio.dart';

abstract class IAlbumService {
  Future<List<Album>> getUserAlbums({required String userId});

  Future<List<Photo>> getAlbumPhotos({required String albumId});

  Future<List<Thumbnail>> getThumbnailList({required List<Album> listAlbums});

  Future<void> setAlbumWithPhotos(AlbumWithPhotos album);

  Future<AlbumWithPhotos> getAlbumWithPhoto(int albumId, int userId);
}

class AlbumService implements IAlbumService {
  final UserApi userApi = UserApi(Dio());
  final AlbumSqliteApi albumSqliteApi = AlbumSqliteApi();

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

  @override
  Future<void> setAlbumWithPhotos(AlbumWithPhotos album) async {
    await albumSqliteApi.setAlbumPhotos(album);
  }

  @override
  Future<AlbumWithPhotos> getAlbumWithPhoto(int albumId, int userId) async {
    AlbumWithPhotos? usersFromSql =
        await albumSqliteApi.getAlbumFromSql(albumId);
    if (usersFromSql == null) {
      List<Photo> photoList =
          await userApi.getAlbumPhotos(albumId: albumId.toString());
      usersFromSql =
          AlbumWithPhotos(albumId: albumId, userId: userId, photos: photoList);
      await albumSqliteApi.setAlbumPhotos(usersFromSql);
    }
    return usersFromSql;
  }
}
