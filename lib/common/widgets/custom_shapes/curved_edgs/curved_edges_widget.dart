import 'package:flutter/material.dart';

import 'curved_edges.dart';

class RCurvedEdgeWidget extends StatelessWidget {
  const RCurvedEdgeWidget({
    super.key, this.child,
  });
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: RCustomCurveEdges(),
        child: child
    );
  }
}
