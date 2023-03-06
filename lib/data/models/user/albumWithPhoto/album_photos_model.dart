import 'dart:convert';

import 'package:ca_example/data/models/user/address/address_model.dart';
import 'package:ca_example/data/models/user/photo/photo_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:drift/drift.dart';

part 'album_photos_model.g.dart';

@JsonSerializable()
class AlbumWithPhotos {
  final int albumId;
  final int userId;
  final List<Photo> photos;

  AlbumWithPhotos({
    required this.albumId,
    required this.userId,
    required this.photos,
  });

  factory AlbumWithPhotos.fromJson(Map<String, dynamic> json) =>
      _$AlbumWithPhotosFromJson(json);

  Map<String, dynamic> toJson() => _$AlbumWithPhotosToJson(this);
}

/// Преобразование типов для SQLite из библиотеки drift
class AlbumWithPhotosConverter extends TypeConverter<AlbumWithPhotos, String> {
  const AlbumWithPhotosConverter();

  @override
  AlbumWithPhotos fromSql(String fromDb) {
    return AlbumWithPhotos.fromJson(
        json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(AlbumWithPhotos value) {
    return json.encode(value.toJson());
  }
}
