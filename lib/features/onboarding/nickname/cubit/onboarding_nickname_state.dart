part of 'onboarding_nickname_cubit.dart';

class OnboardingNicknameState extends Equatable {
  const OnboardingNicknameState._({
    required this.input,
    required this.status,
  });

  final NicknameInput input;
  final OnboardingNicknameStatus? status;

  factory OnboardingNicknameState.initial() {
    return const OnboardingNicknameState._(
      input: NicknameInput.pure(),
      status: null,
    );
  }

  OnboardingNicknameState copyWith({
    NicknameInput? input,
    OnboardingNicknameStatus? status,
  }) {
    return OnboardingNicknameState._(
      input: input ?? this.input,
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [input, status];
}

enum OnboardingNicknameStatus {
  failure,
  success,
}
