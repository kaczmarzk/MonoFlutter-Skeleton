part of 'home_cubit.dart';

class HomeState extends Equatable {
  const HomeState._({
    required this.nickname,
  });

  final String? nickname;

  factory HomeState.initial() {
    return const HomeState._(
      nickname: null,
    );
  }

  HomeState copyWith({
    String? nickname,
  }) {
    return HomeState._(
      nickname: nickname ?? this.nickname,
    );
  }

  @override
  List<Object?> get props => [nickname];
}
