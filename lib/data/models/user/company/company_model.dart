import 'dart:convert';

import 'package:json_annotation/json_annotation.dart';
import 'package:drift/drift.dart';

part 'company_model.g.dart';

// Генерируем мапперы с помощью json_serializable
@JsonSerializable()
class Company {
  final String name;
  final String catchPhrase;
  final String bs;

  Company({
    required this.name,
    required this.catchPhrase,
    required this.bs,
  });

  factory Company.fromJson(Map<String, dynamic> json) =>
      _$CompanyFromJson(json);

  Map<String, dynamic> toJson() => _$CompanyToJson(this);

  @override
  String toString() {
    return '$name, $catchPhrase, $bs';
  }
}

/// Преобразование типов для SQLite из библиотеки drift
class CompanyConverter extends TypeConverter<Company, String> {
  const CompanyConverter();

  @override
  Company fromSql(String fromDb) {
    return Company.fromJson(json.decode(fromDb) as Map<String, dynamic>);
  }

  @override
  String toSql(Company value) {
    return json.encode(value.toJson());
  }
}
