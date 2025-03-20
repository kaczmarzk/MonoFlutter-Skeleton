import 'package:flutter/material.dart';
import 'package:pkg_common_ui/pkg_common_ui.dart';

class CommonScaffold extends StatelessWidget {
  const CommonScaffold({
    required this.body,
    this.padding = EdgeInsets.zero,
    this.bottomNavigationBar,
    super.key,
  });

  final Widget body;
  final EdgeInsets padding;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CommonColors.sBackground,
      bottomNavigationBar: bottomNavigationBar,
      body: Stack(
        children: [
          const ScaffoldBackground(),
          _Body(
            key: key,
            padding: padding,
            child: body,
          ),
        ],
      ),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    required this.child,
    required this.padding,
    super.key,
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Container(
        padding: padding,
        alignment: Alignment.center,
        child: child,
      ),
    );
  }
}
