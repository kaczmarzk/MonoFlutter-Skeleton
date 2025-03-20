import 'package:auto_route/auto_route.dart';
import 'package:crew_clash/core/extension/build_context_ext.dart';
import 'package:crew_clash/core/injection/injection.dart';
import 'package:crew_clash/core/routing/routing.gr.dart';
import 'package:crew_clash/features/splash/cubit/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pkg_common_ui/pkg_common_ui.dart';

@RoutePage()
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<SplashCubit>()..init(),
      lazy: false,
      child: const CommonScaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) => BlocListener<SplashCubit, SplashState>(
        listener: (context, state) => switch (state.status) {
          SplashActionStatus.navigateOnboarding => context.router.replace(const OnboardingNicknameRoute()),
          SplashActionStatus.navigateShell => context.router.replace(const ShellRoute()),
          _ => null,
        },
        child: Center(
          child: Text(
            context.l10n.title,
            style: CommonFonts.poppins.h1,
          ),
        ),
      );
}
