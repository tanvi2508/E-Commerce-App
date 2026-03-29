import 'package:flutter/material.dart';

class TCurvedCustomEdges extends CustomClipper<Path> {
  @override
  getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height);

    final firstPoint = Offset(0, size.height - 20);
    final lastPoint = Offset(30, size.height - 20);

    final firstCurve = Offset(0, size.height - 20);
    final lastCurve = Offset(size.width - 30, size.height - 20);

    path.quadraticBezierTo(
      firstPoint.dx,
      firstPoint.dy,
      lastPoint.dx,
      lastPoint.dy,
    );

    path.quadraticBezierTo(
      firstCurve.dx,
      firstCurve.dy,
      lastCurve.dx,
      lastCurve.dy,
    );

    final thirdFirstCurve = Offset(size.width, size.height - 20);
    final thirdlastCurve = Offset(size.width, size.height);

    path.quadraticBezierTo(
      thirdFirstCurve.dx,
      thirdFirstCurve.dy,
      thirdlastCurve.dx,
      thirdlastCurve.dy,
    );

    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return true;
  }
}
