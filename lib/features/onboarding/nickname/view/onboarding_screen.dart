import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pkg_common_ui/pkg_common_ui.dart';
import 'package:skeleton/core/extension/build_context_ext.dart';
import 'package:skeleton/core/injection/injection.dart';
import 'package:skeleton/core/routing/routing.gr.dart';
import 'package:skeleton/features/onboarding/nickname/cubit/onboarding_nickname_cubit.dart';
import 'package:skeleton/features/onboarding/nickname/view/widgets/onboarding_nickname_input.dart';

@RoutePage()
class OnboardingNicknameScreen extends StatelessWidget {
  const OnboardingNicknameScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<OnboardingNicknameCubit>(),
      child: const CommonScaffold(
        padding: EdgeInsets.symmetric(horizontal: 40),
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return BlocListener<OnboardingNicknameCubit, OnboardingNicknameState>(
      listener: (_, state) => switch (state.status) {
        OnboardingNicknameStatus.success => context.router.push(const HomeRoute()),
        _ => null,
      },
      child: Column(
        children: [
          const Gap(70),
          Padding(
            padding: const EdgeInsets.only(right: 50),
            child: Text(
              context.l10n.onboarding.nickname_screen_title,
              style: CommonFonts.poppins.h4,
            ),
          ),
          const Gap(30),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const OnboardingNicknameInput(),
              const Gap(100),
              BlocBuilder<OnboardingNicknameCubit, OnboardingNicknameState>(
                builder: (_, state) => CommonRoundedButton(
                  enabled: state.input.isValid,
                  title: context.l10n.onboarding.nickname_screen_button_title,
                  onPressed: context.read<OnboardingNicknameCubit>().onButtonPressed,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
