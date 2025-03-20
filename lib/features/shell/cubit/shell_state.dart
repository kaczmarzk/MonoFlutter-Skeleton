part of 'shell_cubit.dart';

class ShellState extends Equatable {
  const ShellState._({
    required this.view,
  });

  final ShellView view;

  factory ShellState.initial() {
    return const ShellState._(
      view: ShellView.home,
    );
  }

  ShellState copyWith({
    ShellView? view,
  }) {
    return ShellState._(
      view: view ?? this.view,
    );
  }

  @override
  List<Object?> get props => [view];
}

enum ShellView {
  home,
  menu,
  play;
}
