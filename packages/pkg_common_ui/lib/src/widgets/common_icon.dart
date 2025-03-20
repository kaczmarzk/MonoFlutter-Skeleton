import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:pkg_common_ui/src/values/common_colors.dart';

class CommonIcon extends StatelessWidget {
  const CommonIcon(
    this.path, {
    this.color = CommonColors.white,
    this.size = 24,
    super.key,
  });

  final String path;
  final double size;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      width: size,
      height: size,
    );
  }
}
