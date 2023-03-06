import 'package:ca_example/data/models/user/address/address_model.dart';
import 'package:ca_example/data/models/user/albumWithPhoto/album_photos_model.dart';
import 'package:ca_example/data/models/user/company/company_model.dart';
import 'package:ca_example/data/models/user/photo/photo_model.dart';
import 'package:ca_example/data/models/user/user_model.dart';
import 'package:drift/drift.dart';
import 'dart:io';
import 'package:drift/native.dart';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;

part 'user_sqlite_api.g.dart';

// "Это сгенерирует для нас таблицу с именем "UserTable".
class UserTable extends Table {
  IntColumn get id => integer()();
  TextColumn get username => text()();
  TextColumn get name => text()();
  TextColumn get email => text()();
  TextColumn get phone => text()();
  TextColumn get website => text()();
  // Тут храним объект модели Company
  TextColumn get company => text().map(const CompanyConverter()).nullable()();
  TextColumn get address => text().map(const AddressConverter()).nullable()();
}

class PostsTable extends Table {
  IntColumn get id => integer()();
  IntColumn get userId => integer().references(UserTable, #id)();
  TextColumn get title => text()();
  TextColumn get body => text()();
}

class AlbumPhotosTable extends Table {
  IntColumn get albumId => integer()();
  IntColumn get userId => integer().references(UserTable, #id)();
  // Тут храним список объектов модели Photo
  TextColumn get photos =>
      text().map(const AlbumPhotosListConverter()).nullable()();
}

// эта аннотация говорит дрифт подготовить класс базы данных, который использует три
// таблицы, которые мы только что определили
@DriftDatabase(tables: [UserTable, PostsTable, AlbumPhotosTable])
class MyDatabase extends _$MyDatabase {
  // мы сообщаем базе данных, где хранить данные с помощью этого конструктора
  // MyDatabase() : super(_openConnection());
  static MyDatabase sqlDB = MyDatabase._();
  MyDatabase._() : super(_openConnection());

  // нужно увеличивать это число всякий раз, когда мы изменяем или добавляем определение таблицы.
  @override
  int get schemaVersion => 1;
}

/// Инициализируем БД Sqlite
LazyDatabase _openConnection() {
  // утилита LazyDatabase позволяет нам найти правильное место для файла async.
  return LazyDatabase(() async {
    // поместим файл базы данных, названный здесь db.sqlite, в папку документов
    // для нашего приложения.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase(file);
  });
}

/// Базовый класс Api для Sqlite
class BaseSqliteApi {
  MyDatabase sqlDB = MyDatabase.sqlDB;

  Future<void> clearDB() async {
    await sqlDB.customStatement('PRAGMA foreign_keys = OFF');
    try {
      sqlDB.transaction(() async {
        for (final table in sqlDB.allTables) {
          await sqlDB.delete(table).go();
        }
      });
    } finally {
      await sqlDB.customStatement('PRAGMA foreign_keys = OFF');
    }
  }

  deleteDB() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    file.delete();
  }
}

/// Класс Api для Sqlite для User
class UserSqliteApi extends BaseSqliteApi {
  UserTableData userToUserTable(User user) {
    return UserTableData.fromJson(user.toJson());
  }

  User userFromUserTable(UserTableData userTable) {
    return const UserConverter().fromSql(userTable.toJsonString());
  }

  Future<void> setUsers(List<User> listUsers) async {
    await Future.forEach(listUsers, (e) async {
      int insertIndex =
          await sqlDB.into(sqlDB.userTable).insert(userToUserTable(e));
    });
  }

  Future<List<User>> getUsersFromSql() async {
    List<UserTableData> listUserTable =
        await sqlDB.select(sqlDB.userTable).get();
    return listUserTable.map((e) => userFromUserTable(e)).toList();
  }
}

/// Класс Api для Sqlite для AlbumWithPhotos
class AlbumSqliteApi extends BaseSqliteApi {
  AlbumPhotosTableData albumPhotosToAlbumTable(AlbumWithPhotos album) {
    return AlbumPhotosTableData.fromJson(album.toJson());
  }

  AlbumWithPhotos albumFromAlbumTable(AlbumPhotosTableData album) {
    return const AlbumWithPhotosConverter().fromSql(album.toJsonString());
  }

  Future<void> setAlbumPhotos(AlbumWithPhotos album) async {
    int insertIndex = await sqlDB
        .into(sqlDB.albumPhotosTable)
        .insert(albumPhotosToAlbumTable(album));
  }

  Future<AlbumWithPhotos?> getAlbumFromSql(int albumId) async {
    AlbumWithPhotos? album;
    Stream<List<AlbumPhotosTableData>> albumStream =
        (sqlDB.select(sqlDB.albumPhotosTable)
              ..where((a) => a.albumId.equals(albumId)))
            .watch();
    await for (final value in albumStream) {
      if (value.isNotEmpty) {
        album = albumFromAlbumTable(value.first);
      }
      break;
    }
    return album;
  }
}
