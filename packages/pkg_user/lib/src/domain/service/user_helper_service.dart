import 'package:injectable/injectable.dart';
import 'package:pkg_user/src/domain/model/user_model.dart';

abstract interface class IUserHelperService {
  UserModel createUser({required String nickname});
}

@injectable
class UserHelperService implements IUserHelperService {
  UserHelperService();

  @override
  UserModel createUser({required String nickname}) {
    return UserModel(nickname: nickname);
  }
}
