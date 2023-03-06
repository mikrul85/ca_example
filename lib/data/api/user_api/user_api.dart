import 'package:ca_example/data/models/user/album/album_model.dart';
import 'package:ca_example/data/models/user/photo/photo_model.dart';
import 'package:ca_example/data/models/user/post/post_model.dart';
import 'package:ca_example/data/models/user/user_model.dart';
import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';

part 'user_api.g.dart';

@RestApi(baseUrl: "https://jsonplaceholder.typicode.com/")
abstract class UserApi {
  factory UserApi(Dio dio, {String baseUrl}) = _UserApi;

  @GET("/users")
  Future<List<User>> getUsers();

  @GET("/posts")
  Future<List<Post>> getPosts();

  @GET("user/{userId}/posts")
  Future<List<Post>> getUserPosts({@Path("userId") required String userId});

  @GET("/albums")
  Future<List<Album>> getAlbums();

  @GET("user/{userId}/albums")
  Future<List<Album>> getUserAlbums({@Path("userId") required String userId});

  @GET("/photos")
  Future<List<Photo>> getPhotos();

  @GET("/albums/{albumId}/photos")
  Future<List<Photo>> getAlbumPhotos(
      {@Path("albumId") required String albumId});

  @GET("/photo/{id}")
  Future<Photo> getPhoto({@Path("id") required String id});
}
