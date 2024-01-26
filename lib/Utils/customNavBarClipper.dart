import 'package:flutter/material.dart';


class CustomNavBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final height = size.height;
    final width = size.width;

    Path path = Path();

    path.lineTo(width * 0.1, height * 0.3);
    path.lineTo(width * 0.9, height * 0.3);
    path.lineTo(width, 0);
    path.lineTo(width, height);
    path.lineTo(0, height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper oldClipper) {
    return false;
  }
}
