import 'package:flutter/material.dart';

class AnimatedDefaultTextStyleWidget extends StatefulWidget {
  const AnimatedDefaultTextStyleWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedDefaultTextStyleWidget> createState() =>
      _AnimatedDefaultTextStyleWidgetState();
}

class _AnimatedDefaultTextStyleWidgetState
    extends State<AnimatedDefaultTextStyleWidget> {
  bool selected = false;
  Color color = Colors.deepOrange;
  double size = 35;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 120,
              child: AnimatedDefaultTextStyle(
                curve: Curves.fastLinearToSlowEaseIn,
                style: TextStyle(color: color, fontSize: size),
                duration: const Duration(seconds: 2),
                child: const Text('Widget'),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  color = selected ? Colors.deepPurple : Colors.deepOrange;
                  size=selected?15:35;
                  selected=!selected;
                });
              },
              child: const Text('Switch'),
            ),
          ],
        ),
      ),
    );
  }
}
