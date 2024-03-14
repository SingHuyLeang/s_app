import 'package:flutter/material.dart';

class CustomCurvedEdges extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstCurved = Offset(0, size.height - 20);
    final lastCurved = Offset(30, size.height - 20);
    path.quadraticBezierTo(
      firstCurved.dx,
      firstCurved.dy,
      lastCurved.dx,
      lastCurved.dy,
    );

    final secoundFirstCurved = Offset(0, size.height - 20);
    final secoundLastCurved = Offset(size.width - 30, size.height - 20);
    path.quadraticBezierTo(
      secoundFirstCurved.dx,
      secoundFirstCurved.dy,
      secoundLastCurved.dx,
      secoundLastCurved.dy,
    );

    final thirdFirstCurved = Offset(size.width, size.height - 20);
    final thirdLastCurved = Offset(size.width, size.height);
    path.quadraticBezierTo(
      thirdFirstCurved.dx,
      thirdFirstCurved.dy,
      thirdLastCurved.dx,
      thirdLastCurved.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
