import 'package:flutter/material.dart';

class AnimatedAlignWidget extends StatefulWidget {
  const AnimatedAlignWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedAlignWidget> createState() => _AnimatedAlignWidgetState();
}

class _AnimatedAlignWidgetState extends State<AnimatedAlignWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: Container(
            color: Colors.blueGrey,
            height: 200,
            width: double.infinity,
            child: AnimatedAlign(
              duration: const Duration(seconds: 1),
              curve: Curves.fastLinearToSlowEaseIn,
              alignment: isSelected ? Alignment.topRight : Alignment.bottomLeft,
              child: const FlutterLogo(
                size: 60,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
