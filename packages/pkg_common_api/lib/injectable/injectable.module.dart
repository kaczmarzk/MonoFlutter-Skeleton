//@GeneratedMicroModule;PkgCommonApiPackageModule;package:pkg_common_api/injectable/injectable.module.dart
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i687;

import 'package:injectable/injectable.dart' as _i526;
import 'package:pkg_common_api/src/database/src/database_client.dart' as _i103;

class PkgCommonApiPackageModule extends _i526.MicroPackageModule {
// initializes the registration of main-scope dependencies inside of GetIt
  @override
  _i687.FutureOr<void> init(_i526.GetItHelper gh) {
    gh.lazySingleton<_i103.DatabaseClient>(() => _i103.DatabaseClient());
  }
}
