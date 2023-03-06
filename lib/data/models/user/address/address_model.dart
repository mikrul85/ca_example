import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:drift/drift.dart';

part 'address_model.g.dart';

// Генерируем мапперы с помощью json_serializable
@JsonSerializable()
class Address {
  final String street;
  final String suite;
  final String city;

  Address({
    required this.street,
    required this.suite,
    required this.city,
  });

  factory Address.fromJson(Map<String, dynamic> json) =>
      _$AddressFromJson(json);

  Map<String, dynamic> toJson() => _$AddressToJson(this);

  @override
  String toString() {
    return '$city, $street, $suite';
  }
}

/// Преобразование типов для SQLite из библиотеки drift
class AddressConverter extends TypeConverter<Address, String> {
  const AddressConverter();

  @override
  Address fromSql(String fromDb) {
    return Address.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(Address value) {
    return json.encode(value.toJson());
  }
}
