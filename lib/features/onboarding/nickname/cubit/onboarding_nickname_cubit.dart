import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:loggy/loggy.dart';
import 'package:pkg_user/pkg_user.dart';
import 'package:skeleton/features/onboarding/nickname/input/nickname_input.dart';

part 'onboarding_nickname_state.dart';

@injectable
class OnboardingNicknameCubit extends Cubit<OnboardingNicknameState> with UiLoggy {
  OnboardingNicknameCubit(this._user) : super(OnboardingNicknameState.initial());
  final UserService _user;

  void onInputChanged(String? value) {
    if (value == null) return;
    final NicknameInput input = NicknameInput.dirty(value: value);
    emit(state.copyWith(input: input));
  }

  void onButtonPressed() {
    final input = state.input;
    if (input.isNotValid) return;
    final updateUser = _user.updateUser(nickname: input.value);
    emit(
      state.copyWith(
        status: updateUser.fold(
          (_) => OnboardingNicknameStatus.failure,
          (_) => OnboardingNicknameStatus.success,
        ),
      ),
    );
  }
}
