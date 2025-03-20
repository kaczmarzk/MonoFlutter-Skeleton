import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:loggy/loggy.dart';
import 'package:pkg_common_api/pkg_common_api.dart';
import 'package:pkg_user/src/data/repository/user_repository.dart';
import 'package:pkg_user/src/domain/model/user_model.dart';
import 'package:pkg_user/src/domain/service/user_helper_service.dart';

abstract interface class IUserService {
  bool get isUserRegistered;

  Either<Failure, Success> updateUser({String? nickname});

  Either<Failure, UserModel> getUser();

  Either<Failure, Success> clearUser();
}

@injectable
class UserService with UiLoggy implements IUserService {
  UserService(this._repository, this._helper);

  final UserRepository _repository;
  final UserHelperService _helper;

  @override
  bool get isUserRegistered => _repository.getUser().toNullable() != null;

  @override
  Either<Failure, Success> updateUser({String? nickname}) {
    if (null == nickname) return Success.either();
    return _repository.getUser().fold(
      Either.left,
      (model) {
        final user = model ?? _helper.createUser(nickname: nickname);
        final updated = user.copyWith(nickname: nickname);
        return _repository.putUser(updated);
      },
    );
  }

  @override
  Either<Failure, UserModel> getUser() => _repository.getUser().fold(
        Either.left,
        (model) {
          if (null == model) return Failure.either();
          return right(model);
        },
      );

  @override
  Either<Failure, Success> clearUser() => _repository.removeUser();
}
