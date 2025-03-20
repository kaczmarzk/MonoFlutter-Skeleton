import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:pkg_common_ui/pkg_common_ui.dart';

@RoutePage()
class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const CommonScaffold(
      body: _Body(),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 100),
        Text(
          'Menu',
          style: CommonFonts.poppins.h2,
        ),
      ],
    );
  }
}
