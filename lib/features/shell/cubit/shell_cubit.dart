import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

part 'shell_state.dart';

@injectable
class ShellCubit extends Cubit<ShellState> {
  ShellCubit() : super(ShellState.initial());

  void changeView(ShellView view) {
    if(state.view == view || view == ShellView.play) return;
    emit(state.copyWith(view: view));
  }
}
