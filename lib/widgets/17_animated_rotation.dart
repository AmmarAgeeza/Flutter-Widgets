import 'package:flutter/material.dart';

class AnimatedRotationWidget extends StatefulWidget {
  const AnimatedRotationWidget({super.key});

  @override
  State<AnimatedRotationWidget> createState() => _AnimatedRotationWidgetState();
}

class _AnimatedRotationWidgetState extends State<AnimatedRotationWidget> {
  double turns = 0.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedRotation(
            turns: turns,
            duration: const Duration(seconds: 1),
            child: const FlutterLogo(
              size: 60,
            ),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  turns += 1 / 4;
                });
              },
              child: const Text('Rotate Logo'))
        ],
      )),
    );
  }
}
