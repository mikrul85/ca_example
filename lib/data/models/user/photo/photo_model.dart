import 'dart:convert';

import 'package:ca_example/data/models/user/address/address_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:drift/drift.dart';

part 'photo_model.g.dart';

@JsonSerializable()
class Photo {
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  Photo({
    required this.albumId,
    required this.id,
    required this.title,
    required this.url,
    required this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}

/// Преобразование типов для SQLite из библиотеки drift
/// Тут модифицированы методы, чтобы в Sqlite можно было хранить список объекто
class AlbumPhotosListConverter extends TypeConverter<List<Photo>, String> {
  const AlbumPhotosListConverter();

  @override
  String toSql(List<Photo> value) {
    List<String> data = <String>[];

    for (var v in value) {
      String strCycle = json.encode(v.toJson());
      data.add(strCycle);
    }

    return json.encode(data);
  }

  @override
  List<Photo> fromSql(String fromDb) {
    List<Photo> photoList = <Photo>[];

    List jsonData = json.decode(fromDb);

    // final strData = jsonData['body'] as List<String>;
    for (var value in jsonData) {
      Photo photo = Photo.fromJson(json.decode(value) as Map<String, dynamic>);
      photoList.add(photo);
    }
    return photoList;
  }
}
