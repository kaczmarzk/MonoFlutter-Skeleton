import 'package:flutter/material.dart';
import 'package:pkg_common_ui/pkg_common_ui.dart';

abstract final class CommonFonts {
  static PoppinsTextStyles get poppins => PoppinsTextStyles._();

  static InterTextStyles get inter => InterTextStyles._();

  static TextStyle get transparent => const TextStyle(
        color: CommonColors.transparent,
        fontSize: 1,
      );
}

class InterTextStyles {
  InterTextStyles._();

  static const String _fontFamily = 'Inter';

  final TextStyle titleM = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w600,
  );

  final TextStyle titleS = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    height: 24 / 14,
    fontWeight: FontWeight.w600,
  );

  final TextStyle buttonL = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 16,
    height: 24 / 16,
    fontWeight: FontWeight.w700,
  );

  final TextStyle buttonS = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    height: 24 / 14,
    fontWeight: FontWeight.w700,
  );

  final TextStyle tab = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    height: 24 / 14,
    fontWeight: FontWeight.w600,
  );

  final TextStyle bodyL = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 14,
    height: 24 / 14,
    fontWeight: FontWeight.w500,
  );

  final TextStyle bodyS = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    height: 24 / 13,
    fontWeight: FontWeight.w500,
  );

  final TextStyle bodySBold = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    height: 24 / 13,
    fontWeight: FontWeight.w700,
  );

  final TextStyle bodySRegular = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 13,
    height: 20 / 13,
    fontWeight: FontWeight.w400,
  );

  final TextStyle captionL = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 12,
    height: 16 / 12,
    fontWeight: FontWeight.w500,
  );

  final TextStyle captionS = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10,
    height: 16 / 10,
    fontWeight: FontWeight.w500,
  );

  final TextStyle chip = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 10,
    height: 16 / 10,
    fontWeight: FontWeight.w700,
    letterSpacing: 0.5,
  );
}

class PoppinsTextStyles {
  PoppinsTextStyles._();

  static const String _fontFamily = 'Poppins';

  final TextStyle h0 = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 60,
    height: 64 / 60,
    fontWeight: FontWeight.w600,
  );

  final TextStyle h1 = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 48,
    height: 56 / 48,
    fontWeight: FontWeight.w600,
  );

  final TextStyle h2 = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 40,
    height: 48 / 40,
    fontWeight: FontWeight.w600,
  );

  final TextStyle h3 = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 36,
    height: 40 / 36,
    fontWeight: FontWeight.w600,
  );

  final TextStyle h4 = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 32,
    height: 40 / 32,
    fontWeight: FontWeight.w600,
  );

  final TextStyle h5 = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 24,
    height: 32 / 24,
    fontWeight: FontWeight.w600,
  );

  final TextStyle h6 = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 20,
    height: 24 / 20,
    fontWeight: FontWeight.w600,
  );

  final TextStyle title = const TextStyle(
    fontFamily: _fontFamily,
    fontSize: 18,
    height: 24 / 18,
    fontWeight: FontWeight.w600,
  );
}
