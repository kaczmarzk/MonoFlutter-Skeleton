import 'package:flutter/material.dart';
import 'package:pkg_common_ui/src/values/common_colors.dart';

class ScaffoldBackground extends StatelessWidget {
  const ScaffoldBackground({super.key});

  @override
  Widget build(BuildContext context) => const Stack(
        children: [
          Positioned.fill(
            child: ColoredBox(color: CommonColors.sBackground),
          ),
          Positioned(
            right: -400,
            bottom: -400,
            child: _GradientCircle(),
          ),
          Positioned(
            left: -400,
            top: -400,
            child: _GradientCircle(),
          ),
        ],
      );
}

class _GradientCircle extends StatelessWidget {
  const _GradientCircle();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 800,
      width: 800,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        gradient: RadialGradient(
          colors: [
            const Color(0xFFEF88ED).withAlpha(25),
            const Color(0xFF7269E3).withAlpha(10),
            const Color(0xFF8350DB).withAlpha(0),
          ],
          stops: const [0, 0.5, 1],
        ),
      ),
    );
  }
}
