import 'package:crew_clash/core/injection/injection.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:pkg_common_api/injectable/injectable.module.dart';
import 'package:pkg_user/injectable/injectable.module.dart';

/// Configures dependency injection generator
/// Run build runner every time when adding new dependencies
///
/// Command:
/// dart run build_runner build
/// dart run build_runner build --delete-conflicting-outputs

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: false,
  asExtension: true,
  usesNullSafety: true,
  includeMicroPackages: false,
  externalPackageModulesBefore: [ExternalModule(PkgCommonApiPackageModule)],
  externalPackageModulesAfter: [ExternalModule(PkgUserPackageModule)],
)
Future<void> configureDependencies() => GetIt.instance.init();

/// Inject the dependency from get_it.
T inject<T extends Object>({
  String? instanceName,
  dynamic firstParam,
  dynamic secondParam,
}) =>
    GetIt.instance.get<T>(
      instanceName: instanceName,
      param1: firstParam,
      param2: secondParam,
    );
