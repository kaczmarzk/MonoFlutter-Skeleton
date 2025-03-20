import 'package:flutter/material.dart';
import 'package:pkg_common_ui/src/values/common_colors.dart';
import 'package:pkg_common_ui/src/values/common_fonts.dart';

class CommonUnderlineInput extends StatelessWidget {
  const CommonUnderlineInput({
    required this.title,
    required this.onChanged,
    this.autofocus = false,
    this.success = false,
    this.hint,
    this.error,
    super.key,
  });

  final String title;
  final bool autofocus;
  final bool success;
  final String? hint;
  final String? error;
  final void Function(String?) onChanged;

  // text field height + error label height
  static const double height = 76.0;

  static const Color foregroundColor = CommonColors.white;
  static const Color secondaryColor = CommonColors.hint;
  static const Color errorColor = CommonColors.error;
  static const Color successColor = CommonColors.success;

  Color get _underlineBorderColor {
    if (error == null && success) return successColor;
    return CommonColors.background;
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: TextField(
        style: CommonFonts.inter.titleM.copyWith(color: foregroundColor),
        autocorrect: false,
        autofocus: autofocus,
        onChanged: onChanged,
        cursorColor: secondaryColor,
        decoration: InputDecoration(
          labelText: title,
          alignLabelWithHint: false,
          floatingLabelBehavior: FloatingLabelBehavior.always,
          floatingLabelAlignment: FloatingLabelAlignment.start,
          floatingLabelStyle: CommonFonts.inter.chip.copyWith(color: secondaryColor),
          hintText: hint,
          hintStyle: CommonFonts.inter.titleM.copyWith(color: secondaryColor),
          errorText: error,
          errorStyle: CommonFonts.inter.captionS,
          errorBorder: const UnderlineInputBorder(borderSide: BorderSide(color: errorColor)),
          enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: _underlineBorderColor)),
          focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: _underlineBorderColor)),
        ),
      ),
    );
  }
}
