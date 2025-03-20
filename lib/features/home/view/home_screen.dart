import 'package:auto_route/auto_route.dart';
import 'package:crew_clash/core/injection/injection.dart';
import 'package:crew_clash/features/home/cubit/home_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pkg_common_ui/pkg_common_ui.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => inject<HomeCubit>()..init(),
      lazy: false,
      child: const CommonScaffold(
        body: _Body(),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Text(
          'Home',
          style: CommonFonts.poppins.h2,
        ),
        const SizedBox(height: 10),
        BlocSelector<HomeCubit, HomeState, String?>(
          selector: (state) => state.nickname,
          builder: (_, nickname) {
            if (nickname == null) return const SizedBox.shrink();
            return Text(
              nickname,
              style: CommonFonts.inter.bodyL,
            );
          },
        ),
        const Spacer(),
      ],
    );
  }
}
