import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:pkg_common_api/pkg_common_api.dart';
import 'package:pkg_user/src/data/dto/user_dto.dart';

abstract interface class IUserLocalSource {
  void putUser(UserDto dto);

  UserDto? getUser();

  void removeUser();
}

@injectable
class UserLocalSource implements IUserLocalSource {
  UserLocalSource(this._db);

  final DatabaseClient _db;

  static const _box = DatabaseFactory.baseBox;
  static const _key = 'user';

  @override
  void putUser(UserDto dto) {
    final dynamic value = json.encode(dto.toJson());
    _db.putAtKey(box: _box, key: _key, value: value);
  }

  @override
  UserDto? getUser() {
    final dbo = _db.getWithKey(box: _box, key: _key) as String?;
    if (dbo == null) return null;
    final value = json.decode(dbo) as Map<String, dynamic>;
    return UserDto.fromJson(value);
  }

  @override
  void removeUser() {
    _db.deleteAtKey(box: _box, key: _key);
  }
}
