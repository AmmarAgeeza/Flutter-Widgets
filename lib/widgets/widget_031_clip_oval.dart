import 'package:flutter/material.dart';

class ClipOvalWidget extends StatelessWidget {
  const ClipOvalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipOval(
          clipper: CustomClip(),
          child: Container(
            height: 80,
            width: 80,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}

class CustomClip extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
   return Rect.fromLTWH(0,0, size.width -10, size.height);
  }

  @override
  bool shouldReclip(covariant CustomClipper<Rect> oldClipper) {
    return false;
  }
}
