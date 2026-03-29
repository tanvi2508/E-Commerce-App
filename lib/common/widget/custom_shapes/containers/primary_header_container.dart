import 'package:flutter/cupertino.dart';
import 'curved_edge_Widget.dart';
import 'curved_edges.dart';

class TPrimaryHeaderWidget extends StatelessWidget {
  const TPrimaryHeaderWidget({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return TCurveEdgeWidget(child: CurveEdgeContainer(child: child));
  }
}

class TCurveEdgeWidget extends StatelessWidget {
  const TCurveEdgeWidget({super.key, this.child});

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(clipper: TCurvedCustomEdges(), child: child);
  }
}
