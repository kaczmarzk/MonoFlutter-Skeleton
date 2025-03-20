import 'package:flutter/material.dart';
import 'package:pkg_localizations/pkg_localizations.dart';

extension BuildContextExt on BuildContext {
  Translations get l10n => Translations.of(this);
  MediaQueryData get mq => MediaQuery.of(this);
}
