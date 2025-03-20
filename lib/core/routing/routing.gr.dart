// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:skeleton/features/home/view/home_screen.dart' as _i1;
import 'package:skeleton/features/menu/view/menu_screen.dart' as _i2;
import 'package:skeleton/features/onboarding/nickname/view/onboarding_screen.dart'
    as _i3;
import 'package:skeleton/features/shell/view/shell_screen.dart' as _i4;
import 'package:skeleton/features/splash/view/splash_screen.dart' as _i5;

/// generated route for
/// [_i1.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute({List<_i6.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i1.HomeScreen();
    },
  );
}

/// generated route for
/// [_i2.MenuScreen]
class MenuRoute extends _i6.PageRouteInfo<void> {
  const MenuRoute({List<_i6.PageRouteInfo>? children})
    : super(MenuRoute.name, initialChildren: children);

  static const String name = 'MenuRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i2.MenuScreen();
    },
  );
}

/// generated route for
/// [_i3.OnboardingNicknameScreen]
class OnboardingNicknameRoute extends _i6.PageRouteInfo<void> {
  const OnboardingNicknameRoute({List<_i6.PageRouteInfo>? children})
    : super(OnboardingNicknameRoute.name, initialChildren: children);

  static const String name = 'OnboardingNicknameRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i3.OnboardingNicknameScreen();
    },
  );
}

/// generated route for
/// [_i4.ShellScreen]
class ShellRoute extends _i6.PageRouteInfo<void> {
  const ShellRoute({List<_i6.PageRouteInfo>? children})
    : super(ShellRoute.name, initialChildren: children);

  static const String name = 'ShellRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i4.ShellScreen();
    },
  );
}

/// generated route for
/// [_i5.SplashScreen]
class SplashRoute extends _i6.PageRouteInfo<void> {
  const SplashRoute({List<_i6.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i6.PageInfo page = _i6.PageInfo(
    name,
    builder: (data) {
      return const _i5.SplashScreen();
    },
  );
}
