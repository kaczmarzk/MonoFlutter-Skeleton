import 'package:auto_route/auto_route.dart';
import 'package:skeleton/core/routing/routing.gr.dart';

@AutoRouterConfig()
class Routing extends RootStackRouter {
  @override
  RouteType get defaultRouteType => const RouteType.cupertino();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: SplashRoute.page, initial: true),
        AutoRoute(page: OnboardingNicknameRoute.page),
        AutoRoute(
          page: ShellRoute.page,
          children: [
            AutoRoute(page: HomeRoute.page),
            AutoRoute(page: MenuRoute.page),
          ],
        ),
      ];
}
