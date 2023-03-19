import 'package:flutter/material.dart';

class AnimatedOpacityWidget extends StatefulWidget {
  const AnimatedOpacityWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedOpacityWidget> createState() => _AnimatedOpacityWidgetState();
}

class _AnimatedOpacityWidgetState extends State<AnimatedOpacityWidget> {
  double opacityLevel = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: opacityLevel,
              duration: const Duration(seconds: 1),
              child: const FlutterLogo(
                size: 60,
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                   opacityLevel= opacityLevel == 0 ? 1 : 0;
                  });
                },
                child: const Text('Animated Opacity'))
          ],
        ),
      ),
    );
  }
}
