import 'package:flutter/material.dart';
import 'package:t_app/common/widgets/curved_edges/curved_edges.dart';

class CurvedEdgesWidget extends StatelessWidget {
  const CurvedEdgesWidget({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}
