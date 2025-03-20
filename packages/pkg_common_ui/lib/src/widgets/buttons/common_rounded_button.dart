import 'package:flutter/material.dart';
import 'package:pkg_common_ui/src/values/common_colors.dart';
import 'package:pkg_common_ui/src/values/common_fonts.dart';

class CommonRoundedButton extends StatelessWidget {
  const CommonRoundedButton({
    required this.title,
    required this.onPressed,
    this.width = double.infinity,
    this.enabled = true,
    super.key,
  });

  final String title;
  final VoidCallback onPressed;
  final double width;
  final bool enabled;

  static final Color elevationColor = Colors.black.withAlpha(125);
  static const Color backgroundColor = CommonColors.primary;
  static const Color foregroundColor = CommonColors.white;
  static const int disabledAlpha = 130;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: enabled ? onPressed : null,
      style: ElevatedButton.styleFrom(
        elevation: 8.0,
        backgroundColor: backgroundColor,
        disabledBackgroundColor: backgroundColor.withAlpha(disabledAlpha),
        disabledForegroundColor: foregroundColor.withAlpha(disabledAlpha),
        enableFeedback: true,
        shadowColor: elevationColor,
        foregroundColor: foregroundColor,
      ),
      child: Container(
        height: 48,
        width: width,
        alignment: Alignment.center,
        child: Text(
          title,
          style: CommonFonts.inter.buttonS.copyWith(),
        ),
      ),
    );
  }
}
