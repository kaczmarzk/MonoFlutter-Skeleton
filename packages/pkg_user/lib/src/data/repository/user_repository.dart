import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:loggy/loggy.dart';
import 'package:pkg_common_api/pkg_common_api.dart';
import 'package:pkg_user/src/data/dto/user_dto.dart';
import 'package:pkg_user/src/data/source/user_local_source.dart';
import 'package:pkg_user/src/domain/model/user_model.dart';

abstract interface class IUserRepository {
  Either<Failure, Success> putUser(UserModel model);

  Either<Failure, UserModel?> getUser();

  Either<Failure, Success> removeUser();
}

@injectable
class UserRepository with UiLoggy implements IUserRepository {
  UserRepository(this._source);

  final UserLocalSource _source;

  @override
  Either<Failure, Success> putUser(UserModel model) {
    try {
      final UserDto dto = model.toDto();
      _source.putUser(dto);
      return Success.either();
    } catch (e, st) {
      loggy.error('Failure to update user', e, st);
      return Failure.either(e, st);
    }
  }

  @override
  Either<Failure, UserModel?> getUser() {
    try {
      final UserDto? dto = _source.getUser();
      if (dto == null) return right(null);
      return right(UserModel.fromDto(dto));
    } catch (e, st) {
      loggy.error('Failure to retrieve user', e, st);
      return Failure.either(e, st);
    }
  }

  @override
  Either<Failure, Success> removeUser() => Either.tryCatch(
        () {
          _source.removeUser();
          return const Success();
        },
        (e, st) {
          loggy.error('Failure to remove user instance from db', e);
          return Failure(e, st);
        },
      );
}
