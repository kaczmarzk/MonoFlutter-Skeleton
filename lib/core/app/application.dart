import 'package:crew_clash/core/injection/injection.dart';
import 'package:crew_clash/core/routing/routing.dart';
import 'package:flutter/material.dart';

// This widget is the root of your application.
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark),
      routerConfig: inject<Routing>().config(),
    );
  }
}
