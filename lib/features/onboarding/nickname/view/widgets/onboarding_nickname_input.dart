import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pkg_common_ui/pkg_common_ui.dart';
import 'package:skeleton/core/extension/build_context_ext.dart';
import 'package:skeleton/features/onboarding/nickname/cubit/onboarding_nickname_cubit.dart';
import 'package:skeleton/features/onboarding/nickname/input/nickname_input.dart';

class OnboardingNicknameInput extends StatelessWidget {
  const OnboardingNicknameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingNicknameCubit, OnboardingNicknameState>(
      builder: (_, state) => CommonUnderlineInput(
        title: context.l10n.onboarding.nickname_screen_input_title,
        hint: context.l10n.onboarding.nickname_screen_button_hint,
        onChanged: context.read<OnboardingNicknameCubit>().onInputChanged,
        autofocus: true,
        error: _mapErrorTypeToMessage(context, state.input.displayError),
        success: state.input.isValid,
      ),
    );
  }

  String? _mapErrorTypeToMessage(BuildContext context, NicknameInputError? error) => switch (error) {
        NicknameInputError.empty => context.l10n.onboarding.input_validation.empty,
        NicknameInputError.containsProhibitedChars => context.l10n.onboarding.input_validation.containsProhibitedChars,
        NicknameInputError.notCorrectLength => context.l10n.onboarding.input_validation.notCorrectLength,
        _ => null,
      };
}
