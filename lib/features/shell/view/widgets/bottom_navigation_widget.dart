import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pkg_common_ui/pkg_common_ui.dart';
import 'package:skeleton/core/extension/build_context_ext.dart';
import 'package:skeleton/features/shell/cubit/shell_cubit.dart';

class BottomNavigationWidget extends StatelessWidget {
  const BottomNavigationWidget({super.key});

  static const double size = 60;

  /// colors
  static const Color backgroundColor = CommonColors.background;
  static const int backgroundAlpha = 70;

  /// insets
  static const double horizontalPadding = 16;
  static const double horizontalMargin = 48;
  static const double bottomMargin = 12;

  /// radius
  static const double borderRadius = 20;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      decoration: BoxDecoration(
        color: backgroundColor.withAlpha(backgroundAlpha),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
      margin: const EdgeInsets.symmetric(horizontal: horizontalMargin).copyWith(
        bottom: context.mq.padding.bottom + bottomMargin,
      ),
      child: const SizedBox(
        height: size,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _NavigationButton(
              icon: CommonIcons.bottomNavigationHome,
              view: ShellView.home,
            ),
            _NavigationButton(
              icon: CommonIcons.bottomNavigationController,
              view: ShellView.play,
            ),
            _NavigationButton(
              icon: CommonIcons.bottomNavigationMenu,
              view: ShellView.menu,
            ),
          ],
        ),
      ),
    );
  }
}

class _NavigationButton extends StatelessWidget {
  const _NavigationButton({required this.icon, required this.view});

  final String icon;
  final ShellView view;

  static const double iconSize = 26;
  static const Color foregroundColor = CommonColors.white;

  static const int foregroundAlpha = 100;
  static const int foregroundSelectedAlpha = 255;

  @override
  Widget build(BuildContext context) => BlocSelector<ShellCubit, ShellState, ShellView>(
        selector: (state) => state.view,
        builder: (context, selectedView) {
          final int colorAlpha = selectedView == view ? foregroundSelectedAlpha : foregroundAlpha;
          return IconButton(
            onPressed: () => context.read<ShellCubit>().changeView(view),
            icon: CommonIcon(
              icon,
              size: iconSize,
              color: foregroundColor.withAlpha(colorAlpha),
            ),
          );
        },
      );
}
