import 'package:flutter/material.dart';

class ClipRectWidget extends StatelessWidget {
  const ClipRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ClipRect(
        clipper: CustomClip(),
        child: Container(
          height: 3000,
          width: 3000,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
   return const Rect.fromLTWH(80,0, 80, 80);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
