import 'package:flutter/material.dart';

class AnimatedSizeWidget extends StatefulWidget {
  const AnimatedSizeWidget({super.key});

  @override
  State<AnimatedSizeWidget> createState() => _AnimatedSizeWidgetState();
}

class _AnimatedSizeWidgetState extends State<AnimatedSizeWidget> {
  double size = 300;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSize(
              duration: const Duration(seconds: 2),
              child: FlutterLogo(size: size),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    size = size == 300 ? 100 : 300;
                  });
                },
                child: const Text('AnimatedSize'))
          ],
        ),
      ),
    );
  }
}
