// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_sqlite_api.dart';

// **************************************************************************
// DriftDatabaseGenerator
// **************************************************************************

// ignore_for_file: type=lint
class UserTableData extends DataClass implements Insertable<UserTableData> {
  final int id;
  final String username;
  final String name;
  final String email;
  final String phone;
  final String website;
  final Company? company;
  final Address? address;
  const UserTableData(
      {required this.id,
      required this.username,
      required this.name,
      required this.email,
      required this.phone,
      required this.website,
      this.company,
      this.address});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['username'] = Variable<String>(username);
    map['name'] = Variable<String>(name);
    map['email'] = Variable<String>(email);
    map['phone'] = Variable<String>(phone);
    map['website'] = Variable<String>(website);
    if (!nullToAbsent || company != null) {
      final converter = $UserTableTable.$converter0n;
      map['company'] = Variable<String>(converter.toSql(company));
    }
    if (!nullToAbsent || address != null) {
      final converter = $UserTableTable.$converter1n;
      map['address'] = Variable<String>(converter.toSql(address));
    }
    return map;
  }

  UserTableCompanion toCompanion(bool nullToAbsent) {
    return UserTableCompanion(
      id: Value(id),
      username: Value(username),
      name: Value(name),
      email: Value(email),
      phone: Value(phone),
      website: Value(website),
      company: company == null && nullToAbsent
          ? const Value.absent()
          : Value(company),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
    );
  }

  factory UserTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserTableData(
      id: serializer.fromJson<int>(json['id']),
      username: serializer.fromJson<String>(json['username']),
      name: serializer.fromJson<String>(json['name']),
      email: serializer.fromJson<String>(json['email']),
      phone: serializer.fromJson<String>(json['phone']),
      website: serializer.fromJson<String>(json['website']),
      company: serializer.fromJson<Company?>(json['company']),
      address: serializer.fromJson<Address?>(json['address']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'username': serializer.toJson<String>(username),
      'name': serializer.toJson<String>(name),
      'email': serializer.toJson<String>(email),
      'phone': serializer.toJson<String>(phone),
      'website': serializer.toJson<String>(website),
      'company': serializer.toJson<Company?>(company),
      'address': serializer.toJson<Address?>(address),
    };
  }

  UserTableData copyWith(
          {int? id,
          String? username,
          String? name,
          String? email,
          String? phone,
          String? website,
          Value<Company?> company = const Value.absent(),
          Value<Address?> address = const Value.absent()}) =>
      UserTableData(
        id: id ?? this.id,
        username: username ?? this.username,
        name: name ?? this.name,
        email: email ?? this.email,
        phone: phone ?? this.phone,
        website: website ?? this.website,
        company: company.present ? company.value : this.company,
        address: address.present ? address.value : this.address,
      );
  @override
  String toString() {
    return (StringBuffer('UserTableData(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('company: $company, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, username, name, email, phone, website, company, address);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserTableData &&
          other.id == this.id &&
          other.username == this.username &&
          other.name == this.name &&
          other.email == this.email &&
          other.phone == this.phone &&
          other.website == this.website &&
          other.company == this.company &&
          other.address == this.address);
}

class UserTableCompanion extends UpdateCompanion<UserTableData> {
  final Value<int> id;
  final Value<String> username;
  final Value<String> name;
  final Value<String> email;
  final Value<String> phone;
  final Value<String> website;
  final Value<Company?> company;
  final Value<Address?> address;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.name = const Value.absent(),
    this.email = const Value.absent(),
    this.phone = const Value.absent(),
    this.website = const Value.absent(),
    this.company = const Value.absent(),
    this.address = const Value.absent(),
  });
  UserTableCompanion.insert({
    required int id,
    required String username,
    required String name,
    required String email,
    required String phone,
    required String website,
    this.company = const Value.absent(),
    this.address = const Value.absent(),
  })  : id = Value(id),
        username = Value(username),
        name = Value(name),
        email = Value(email),
        phone = Value(phone),
        website = Value(website);
  static Insertable<UserTableData> custom({
    Expression<int>? id,
    Expression<String>? username,
    Expression<String>? name,
    Expression<String>? email,
    Expression<String>? phone,
    Expression<String>? website,
    Expression<String>? company,
    Expression<String>? address,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (username != null) 'username': username,
      if (name != null) 'name': name,
      if (email != null) 'email': email,
      if (phone != null) 'phone': phone,
      if (website != null) 'website': website,
      if (company != null) 'company': company,
      if (address != null) 'address': address,
    });
  }

  UserTableCompanion copyWith(
      {Value<int>? id,
      Value<String>? username,
      Value<String>? name,
      Value<String>? email,
      Value<String>? phone,
      Value<String>? website,
      Value<Company?>? company,
      Value<Address?>? address}) {
    return UserTableCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      website: website ?? this.website,
      company: company ?? this.company,
      address: address ?? this.address,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (username.present) {
      map['username'] = Variable<String>(username.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (phone.present) {
      map['phone'] = Variable<String>(phone.value);
    }
    if (website.present) {
      map['website'] = Variable<String>(website.value);
    }
    if (company.present) {
      final converter = $UserTableTable.$converter0n;
      map['company'] = Variable<String>(converter.toSql(company.value));
    }
    if (address.present) {
      final converter = $UserTableTable.$converter1n;
      map['address'] = Variable<String>(converter.toSql(address.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
          ..write('name: $name, ')
          ..write('email: $email, ')
          ..write('phone: $phone, ')
          ..write('website: $website, ')
          ..write('company: $company, ')
          ..write('address: $address')
          ..write(')'))
        .toString();
  }
}

class $UserTableTable extends UserTable
    with TableInfo<$UserTableTable, UserTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _usernameMeta = const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _phoneMeta = const VerificationMeta('phone');
  @override
  late final GeneratedColumn<String> phone = GeneratedColumn<String>(
      'phone', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _websiteMeta = const VerificationMeta('website');
  @override
  late final GeneratedColumn<String> website = GeneratedColumn<String>(
      'website', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _companyMeta = const VerificationMeta('company');
  @override
  late final GeneratedColumnWithTypeConverter<Company?, String> company =
      GeneratedColumn<String>('company', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Company?>($UserTableTable.$converter0n);
  final VerificationMeta _addressMeta = const VerificationMeta('address');
  @override
  late final GeneratedColumnWithTypeConverter<Address?, String> address =
      GeneratedColumn<String>('address', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<Address?>($UserTableTable.$converter1n);
  @override
  List<GeneratedColumn> get $columns =>
      [id, username, name, email, phone, website, company, address];
  @override
  String get aliasedName => _alias ?? 'user_table';
  @override
  String get actualTableName => 'user_table';
  @override
  VerificationContext validateIntegrity(Insertable<UserTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('phone')) {
      context.handle(
          _phoneMeta, phone.isAcceptableOrUnknown(data['phone']!, _phoneMeta));
    } else if (isInserting) {
      context.missing(_phoneMeta);
    }
    if (data.containsKey('website')) {
      context.handle(_websiteMeta,
          website.isAcceptableOrUnknown(data['website']!, _websiteMeta));
    } else if (isInserting) {
      context.missing(_websiteMeta);
    }
    context.handle(_companyMeta, const VerificationResult.success());
    context.handle(_addressMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  UserTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserTableData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      username: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      name: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      email: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      phone: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}phone'])!,
      website: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}website'])!,
      company: $UserTableTable.$converter0n.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.string, data['${effectivePrefix}company'])),
      address: $UserTableTable.$converter1n.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.string, data['${effectivePrefix}address'])),
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }

  static TypeConverter<Company, String> $converter0 = const CompanyConverter();
  static TypeConverter<Address, String> $converter1 = const AddressConverter();
  static TypeConverter<Company?, String?> $converter0n =
      NullAwareTypeConverter.wrap($converter0);
  static TypeConverter<Address?, String?> $converter1n =
      NullAwareTypeConverter.wrap($converter1);
}

class PostsTableData extends DataClass implements Insertable<PostsTableData> {
  final int id;
  final int userId;
  final String title;
  final String body;
  const PostsTableData(
      {required this.id,
      required this.userId,
      required this.title,
      required this.body});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['user_id'] = Variable<int>(userId);
    map['title'] = Variable<String>(title);
    map['body'] = Variable<String>(body);
    return map;
  }

  PostsTableCompanion toCompanion(bool nullToAbsent) {
    return PostsTableCompanion(
      id: Value(id),
      userId: Value(userId),
      title: Value(title),
      body: Value(body),
    );
  }

  factory PostsTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PostsTableData(
      id: serializer.fromJson<int>(json['id']),
      userId: serializer.fromJson<int>(json['userId']),
      title: serializer.fromJson<String>(json['title']),
      body: serializer.fromJson<String>(json['body']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'userId': serializer.toJson<int>(userId),
      'title': serializer.toJson<String>(title),
      'body': serializer.toJson<String>(body),
    };
  }

  PostsTableData copyWith(
          {int? id, int? userId, String? title, String? body}) =>
      PostsTableData(
        id: id ?? this.id,
        userId: userId ?? this.userId,
        title: title ?? this.title,
        body: body ?? this.body,
      );
  @override
  String toString() {
    return (StringBuffer('PostsTableData(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, userId, title, body);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PostsTableData &&
          other.id == this.id &&
          other.userId == this.userId &&
          other.title == this.title &&
          other.body == this.body);
}

class PostsTableCompanion extends UpdateCompanion<PostsTableData> {
  final Value<int> id;
  final Value<int> userId;
  final Value<String> title;
  final Value<String> body;
  const PostsTableCompanion({
    this.id = const Value.absent(),
    this.userId = const Value.absent(),
    this.title = const Value.absent(),
    this.body = const Value.absent(),
  });
  PostsTableCompanion.insert({
    required int id,
    required int userId,
    required String title,
    required String body,
  })  : id = Value(id),
        userId = Value(userId),
        title = Value(title),
        body = Value(body);
  static Insertable<PostsTableData> custom({
    Expression<int>? id,
    Expression<int>? userId,
    Expression<String>? title,
    Expression<String>? body,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (userId != null) 'user_id': userId,
      if (title != null) 'title': title,
      if (body != null) 'body': body,
    });
  }

  PostsTableCompanion copyWith(
      {Value<int>? id,
      Value<int>? userId,
      Value<String>? title,
      Value<String>? body}) {
    return PostsTableCompanion(
      id: id ?? this.id,
      userId: userId ?? this.userId,
      title: title ?? this.title,
      body: body ?? this.body,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (body.present) {
      map['body'] = Variable<String>(body.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PostsTableCompanion(')
          ..write('id: $id, ')
          ..write('userId: $userId, ')
          ..write('title: $title, ')
          ..write('body: $body')
          ..write(')'))
        .toString();
  }
}

class $PostsTableTable extends PostsTable
    with TableInfo<$PostsTableTable, PostsTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PostsTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES "user_table" ("id")');
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  final VerificationMeta _bodyMeta = const VerificationMeta('body');
  @override
  late final GeneratedColumn<String> body = GeneratedColumn<String>(
      'body', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, userId, title, body];
  @override
  String get aliasedName => _alias ?? 'posts_table';
  @override
  String get actualTableName => 'posts_table';
  @override
  VerificationContext validateIntegrity(Insertable<PostsTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('body')) {
      context.handle(
          _bodyMeta, body.isAcceptableOrUnknown(data['body']!, _bodyMeta));
    } else if (isInserting) {
      context.missing(_bodyMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  PostsTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PostsTableData(
      id: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      userId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      title: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      body: attachedDatabase.options.types
          .read(DriftSqlType.string, data['${effectivePrefix}body'])!,
    );
  }

  @override
  $PostsTableTable createAlias(String alias) {
    return $PostsTableTable(attachedDatabase, alias);
  }
}

class AlbumPhotosTableData extends DataClass
    implements Insertable<AlbumPhotosTableData> {
  final int albumId;
  final int userId;
  final List<Photo>? photos;
  const AlbumPhotosTableData(
      {required this.albumId, required this.userId, this.photos});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['album_id'] = Variable<int>(albumId);
    map['user_id'] = Variable<int>(userId);
    if (!nullToAbsent || photos != null) {
      final converter = $AlbumPhotosTableTable.$converter0n;
      map['photos'] = Variable<String>(converter.toSql(photos));
    }
    return map;
  }

  AlbumPhotosTableCompanion toCompanion(bool nullToAbsent) {
    return AlbumPhotosTableCompanion(
      albumId: Value(albumId),
      userId: Value(userId),
      photos:
          photos == null && nullToAbsent ? const Value.absent() : Value(photos),
    );
  }

  factory AlbumPhotosTableData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return AlbumPhotosTableData(
      albumId: serializer.fromJson<int>(json['albumId']),
      userId: serializer.fromJson<int>(json['userId']),
      photos: serializer.fromJson<List<Photo>?>(json['photos']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'albumId': serializer.toJson<int>(albumId),
      'userId': serializer.toJson<int>(userId),
      'photos': serializer.toJson<List<Photo>?>(photos),
    };
  }

  AlbumPhotosTableData copyWith(
          {int? albumId,
          int? userId,
          Value<List<Photo>?> photos = const Value.absent()}) =>
      AlbumPhotosTableData(
        albumId: albumId ?? this.albumId,
        userId: userId ?? this.userId,
        photos: photos.present ? photos.value : this.photos,
      );
  @override
  String toString() {
    return (StringBuffer('AlbumPhotosTableData(')
          ..write('albumId: $albumId, ')
          ..write('userId: $userId, ')
          ..write('photos: $photos')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(albumId, userId, photos);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is AlbumPhotosTableData &&
          other.albumId == this.albumId &&
          other.userId == this.userId &&
          other.photos == this.photos);
}

class AlbumPhotosTableCompanion extends UpdateCompanion<AlbumPhotosTableData> {
  final Value<int> albumId;
  final Value<int> userId;
  final Value<List<Photo>?> photos;
  const AlbumPhotosTableCompanion({
    this.albumId = const Value.absent(),
    this.userId = const Value.absent(),
    this.photos = const Value.absent(),
  });
  AlbumPhotosTableCompanion.insert({
    required int albumId,
    required int userId,
    this.photos = const Value.absent(),
  })  : albumId = Value(albumId),
        userId = Value(userId);
  static Insertable<AlbumPhotosTableData> custom({
    Expression<int>? albumId,
    Expression<int>? userId,
    Expression<String>? photos,
  }) {
    return RawValuesInsertable({
      if (albumId != null) 'album_id': albumId,
      if (userId != null) 'user_id': userId,
      if (photos != null) 'photos': photos,
    });
  }

  AlbumPhotosTableCompanion copyWith(
      {Value<int>? albumId, Value<int>? userId, Value<List<Photo>?>? photos}) {
    return AlbumPhotosTableCompanion(
      albumId: albumId ?? this.albumId,
      userId: userId ?? this.userId,
      photos: photos ?? this.photos,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (albumId.present) {
      map['album_id'] = Variable<int>(albumId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (photos.present) {
      final converter = $AlbumPhotosTableTable.$converter0n;
      map['photos'] = Variable<String>(converter.toSql(photos.value));
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AlbumPhotosTableCompanion(')
          ..write('albumId: $albumId, ')
          ..write('userId: $userId, ')
          ..write('photos: $photos')
          ..write(')'))
        .toString();
  }
}

class $AlbumPhotosTableTable extends AlbumPhotosTable
    with TableInfo<$AlbumPhotosTableTable, AlbumPhotosTableData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AlbumPhotosTableTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _albumIdMeta = const VerificationMeta('albumId');
  @override
  late final GeneratedColumn<int> albumId = GeneratedColumn<int>(
      'album_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  final VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: true,
      defaultConstraints: 'REFERENCES "user_table" ("id")');
  final VerificationMeta _photosMeta = const VerificationMeta('photos');
  @override
  late final GeneratedColumnWithTypeConverter<List<Photo>?, String> photos =
      GeneratedColumn<String>('photos', aliasedName, true,
              type: DriftSqlType.string, requiredDuringInsert: false)
          .withConverter<List<Photo>?>($AlbumPhotosTableTable.$converter0n);
  @override
  List<GeneratedColumn> get $columns => [albumId, userId, photos];
  @override
  String get aliasedName => _alias ?? 'album_photos_table';
  @override
  String get actualTableName => 'album_photos_table';
  @override
  VerificationContext validateIntegrity(
      Insertable<AlbumPhotosTableData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('album_id')) {
      context.handle(_albumIdMeta,
          albumId.isAcceptableOrUnknown(data['album_id']!, _albumIdMeta));
    } else if (isInserting) {
      context.missing(_albumIdMeta);
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    context.handle(_photosMeta, const VerificationResult.success());
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => <GeneratedColumn>{};
  @override
  AlbumPhotosTableData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return AlbumPhotosTableData(
      albumId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}album_id'])!,
      userId: attachedDatabase.options.types
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      photos: $AlbumPhotosTableTable.$converter0n.fromSql(attachedDatabase
          .options.types
          .read(DriftSqlType.string, data['${effectivePrefix}photos'])),
    );
  }

  @override
  $AlbumPhotosTableTable createAlias(String alias) {
    return $AlbumPhotosTableTable(attachedDatabase, alias);
  }

  static TypeConverter<List<Photo>, String> $converter0 =
      const AlbumPhotosListConverter();
  static TypeConverter<List<Photo>?, String?> $converter0n =
      NullAwareTypeConverter.wrap($converter0);
}

abstract class _$MyDatabase extends GeneratedDatabase {
  _$MyDatabase(QueryExecutor e) : super(e);
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $PostsTableTable postsTable = $PostsTableTable(this);
  late final $AlbumPhotosTableTable albumPhotosTable =
      $AlbumPhotosTableTable(this);
  @override
  Iterable<TableInfo<Table, dynamic>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userTable, postsTable, albumPhotosTable];
}
