import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:skeleton/core/injection/injection.dart';
import 'package:skeleton/core/routing/routing.gr.dart';
import 'package:skeleton/features/shell/cubit/shell_cubit.dart';
import 'package:skeleton/features/shell/view/widgets/bottom_navigation_widget.dart';

@RoutePage()
class ShellScreen extends StatelessWidget {
  const ShellScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: BlocProvider(
        create: (_) => inject<ShellCubit>(),
        child: const Scaffold(
          floatingActionButton: BottomNavigationWidget(),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          body: _Body(),
        ),
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: const [HomeRoute(), MenuRoute()],
      transitionBuilder: (_, view, __) => view,
      builder: (context, child) => BlocListener<ShellCubit, ShellState>(
        listener: (_, state) => AutoTabsRouter.of(context).setActiveIndex(state.view.index),
        child: child,
      ),
    );
  }
}
