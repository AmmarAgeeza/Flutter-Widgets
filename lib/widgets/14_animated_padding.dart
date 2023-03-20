import 'package:flutter/material.dart';

class AnimatedPaddingWidget extends StatefulWidget {
  const AnimatedPaddingWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPaddingWidget> createState() => _AnimatedPaddingWidgetState();
}

class _AnimatedPaddingWidgetState extends State<AnimatedPaddingWidget> {
  double paddingValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(
                  () {
                    paddingValue = paddingValue == 0 ? 100 : 0;
                  },
                );
              },
              child: const Text('AnimatedPadding'),
            ),
            AnimatedPadding(
              padding: EdgeInsets.all(paddingValue),
              duration: const Duration(seconds: 2),
              curve: Curves.bounceInOut,
              child: Container(
                width: 300,
                height: 300,
                color: Colors.deepOrange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
