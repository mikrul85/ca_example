import 'dart:convert';

import 'package:ca_example/data/models/user/address/address_model.dart';
import 'package:ca_example/data/models/user/company/company_model.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:drift/drift.dart';

part 'user_model.g.dart';

// Генерируем мапперы с помощью json_serializable
@JsonSerializable()
class User {
  final int id;
  final String username;
  final String name;
  final String email;
  final String phone;
  final String website;
  final Company company;
  final Address address;

  User({
    required this.id,
    required this.username,
    required this.name,
    required this.email,
    required this.phone,
    required this.website,
    required this.company,
    required this.address,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}

/// Преобразование типов для SQLite из библиотеки drift
class UserConverter extends TypeConverter<User, String> {
  const UserConverter();

  @override
  User fromSql(String fromDb) {
    return User.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(User value) {
    return json.encode(value.toJson());
  }
}
