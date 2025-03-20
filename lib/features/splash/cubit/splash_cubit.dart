import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:pkg_user/pkg_user.dart';

part 'splash_state.dart';

@injectable
class SplashCubit extends Cubit<SplashState> {
  SplashCubit(this._user) : super(SplashState.initial());

  final UserService _user;

  Future<void> init() async {
    await Future.delayed(const Duration(seconds: 2));
    final isUserRegistered = _user.isUserRegistered;
    emit(
      state.copyWith(
        status: isUserRegistered ? SplashActionStatus.navigateShell : SplashActionStatus.navigateOnboarding,
      ),
    );
  }
}
