// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:crew_clash/core/injection/module/routing_module.dart' as _i943;
import 'package:crew_clash/core/routing/routing.dart' as _i218;
import 'package:crew_clash/features/home/cubit/home_cubit.dart' as _i322;
import 'package:crew_clash/features/onboarding/nickname/cubit/onboarding_nickname_cubit.dart'
    as _i128;
import 'package:crew_clash/features/shell/cubit/shell_cubit.dart' as _i723;
import 'package:crew_clash/features/splash/cubit/splash_cubit.dart' as _i181;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:pkg_common_api/injectable/injectable.module.dart' as _i635;
import 'package:pkg_user/injectable/injectable.module.dart' as _i987;
import 'package:pkg_user/pkg_user.dart' as _i397;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    await _i635.PkgCommonApiPackageModule().init(gh);
    final routingModule = _$RoutingModule();
    gh.factory<_i723.ShellCubit>(() => _i723.ShellCubit());
    gh.singleton<_i218.Routing>(() => routingModule.instance);
    gh.factory<_i322.HomeCubit>(() => _i322.HomeCubit(gh<_i397.UserService>()));
    gh.factory<_i181.SplashCubit>(
        () => _i181.SplashCubit(gh<_i397.UserService>()));
    gh.factory<_i128.OnboardingNicknameCubit>(
        () => _i128.OnboardingNicknameCubit(gh<_i397.UserService>()));
    await _i987.PkgUserPackageModule().init(gh);
    return this;
  }
}

class _$RoutingModule extends _i943.RoutingModule {}
