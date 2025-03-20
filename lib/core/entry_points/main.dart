import 'package:crew_clash/core/app/application.dart';
import 'package:crew_clash/core/injection/injection.dart';
import 'package:flutter/material.dart';
import 'package:pkg_common_api/pkg_common_api.dart';
import 'package:pkg_localizations/pkg_localizations.dart';

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
