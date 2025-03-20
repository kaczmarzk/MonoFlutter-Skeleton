import 'package:flutter/material.dart';
import 'package:pkg_common_api/pkg_common_api.dart';
import 'package:pkg_localizations/pkg_localizations.dart';
import 'package:skeleton/core/app/application.dart';
import 'package:skeleton/core/injection/injection.dart';

Future<void> main() async {
  await setupAppDependencies();
  runApp(
    TranslationProvider(
      child: const Application(),
    ),
  );
}

Future<void> setupAppDependencies() async {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.init();
  await configureDependencies();
  await DatabaseClient.init();
}
