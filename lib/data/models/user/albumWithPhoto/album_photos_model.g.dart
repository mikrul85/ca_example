// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'album_photos_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AlbumWithPhotos _$AlbumWithPhotosFromJson(Map<String, dynamic> json) =>
    AlbumWithPhotos(
      albumId: json['albumId'] as int,
      userId: json['userId'] as int,
      photos: (json['photos'] as List<dynamic>)
          .map((e) => Photo.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AlbumWithPhotosToJson(AlbumWithPhotos instance) =>
    <String, dynamic>{
      'albumId': instance.albumId,
      'userId': instance.userId,
      'photos': instance.photos,
    };
