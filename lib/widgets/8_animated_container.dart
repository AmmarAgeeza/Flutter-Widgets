import 'package:flutter/material.dart';

class AnimatedContainerWidget extends StatefulWidget {
  const AnimatedContainerWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerWidget> createState() =>
      _AnimatedContainerWidgetState();
}

class _AnimatedContainerWidgetState extends State<AnimatedContainerWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Center(
          child: AnimatedContainer(
            duration: const Duration(seconds: 1),
            alignment: isSelected ? Alignment.topRight : Alignment.bottomLeft,
            curve: Curves.fastOutSlowIn,
            color: isSelected ? Colors.deepPurple : Colors.deepOrangeAccent,
            height: isSelected ? 200 : 100,
            width: isSelected ? 100 : 200,
            child: const FlutterLogo(
              size: 38,
            ),
          ),
        ),
      ),
    );
  }
}
