import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Gap extends LeafRenderObjectWidget {
  const Gap(this.size, {super.key});

  final double size;

  @override
  RenderObject createRenderObject(BuildContext context) {
    return _RenderGap(size);
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderObject renderObject,
  ) {
    (renderObject as _RenderGap)._gapSize = size;
  }
}

class _RenderGap extends RenderBox {
  _RenderGap(double gapSize) : _gapSize = gapSize;

  double _gapSize;

  // ignore: avoid_setters_without_getters
  set gapSize(double value) {
    if (_gapSize == value) {
      return;
    }
    markNeedsLayout();
  }

  @override
  void performLayout() {
    final parent = this.parent;
    late Size size;
    if (parent is! RenderFlex) {
      size = Size(_gapSize, _gapSize);
    } else {
      switch (parent.direction) {
        case Axis.horizontal:
          size = Size(_gapSize, 0);
        case Axis.vertical:
          size = Size(0, _gapSize);
      }
    }

    this.size = constraints.constrain(size);
  }
}

extension GapExt on double {
  Gap get asGap => Gap(this);
}
