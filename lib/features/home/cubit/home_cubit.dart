import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pkg_user/pkg_user.dart';

part 'home_state.dart';

@injectable
class HomeCubit extends Cubit<HomeState> {
  HomeCubit(this._user) : super(HomeState.initial());
  final UserService _user;

  void init() {
    final nickname = _user.getUser().toNullable()?.nickname;
    emit(state.copyWith(nickname: nickname));
  }
}
