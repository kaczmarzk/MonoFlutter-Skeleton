part of 'splash_cubit.dart';

class SplashState extends Equatable {
  const SplashState._({required this.status});

  final SplashActionStatus? status;

  factory SplashState.initial() {
    return const SplashState._(
      status: null,
    );
  }

  SplashState copyWith({
    SplashActionStatus? status,
  }) {
    return SplashState._(
      status: status ?? this.status,
    );
  }

  @override
  List<Object?> get props => [status];
}

enum SplashActionStatus {
  navigateOnboarding,
  navigateShell,
  fatal,
}
