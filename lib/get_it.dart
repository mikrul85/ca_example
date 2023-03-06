import 'package:ca_example/data/services/album_service.dart';
import 'package:ca_example/data/services/user_service.dart';
import 'package:get_it/get_it.dart';

void setupGetIt() {
  GetIt.instance.registerSingleton<UserService>(UserService());
  GetIt.instance.registerSingleton<AlbumService>(AlbumService());
}
