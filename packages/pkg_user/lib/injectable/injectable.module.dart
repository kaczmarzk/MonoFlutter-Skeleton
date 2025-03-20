//@GeneratedMicroModule;PkgUserPackageModule;package:pkg_user/injectable/injectable.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:pkg_common_api/pkg_common_api.dart' as _i871;
import 'package:pkg_user/src/data/repository/user_repository.dart' as _i464;
import 'package:pkg_user/src/data/source/user_local_source.dart' as _i187;
import 'package:pkg_user/src/domain/service/user_helper_service.dart' as _i792;
import 'package:pkg_user/src/domain/service/user_service.dart' as _i929;

class PkgUserPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.factory<_i792.UserHelperService>(() => _i792.UserHelperService());
    gh.factory<_i187.UserLocalSource>(
        () => _i187.UserLocalSource(gh<_i871.DatabaseClient>()));
    gh.factory<_i464.UserRepository>(
        () => _i464.UserRepository(gh<_i187.UserLocalSource>()));
    gh.factory<_i929.UserService>(() => _i929.UserService(
          gh<_i464.UserRepository>(),
          gh<_i792.UserHelperService>(),
        ));
  }
}
