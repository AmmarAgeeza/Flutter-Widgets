import 'package:flutter/material.dart';

class AnimatedCrossFadeWidget extends StatefulWidget {
  const AnimatedCrossFadeWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedCrossFadeWidget> createState() =>
      _AnimatedCrossFadeWidgetState();
}

class _AnimatedCrossFadeWidgetState extends State<AnimatedCrossFadeWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () {
                setState(() {
                  isSelected = !isSelected;
                });
              },
              child: const Text('switch'),
            ),
            AnimatedCrossFade(
                firstChild: const FlutterLogo(size: 68),
                secondChild: const Text('Second'),
                crossFadeState: isSelected
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1))
          ],
        ),
      ),
    );
  }
}
