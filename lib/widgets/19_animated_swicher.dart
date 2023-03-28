import 'package:flutter/material.dart';

class AnimatedSwitcherWidget extends StatefulWidget {
  const AnimatedSwitcherWidget({super.key});

  @override
  State<AnimatedSwitcherWidget> createState() => _AnimatedSwitcherWidgetState();
}

class _AnimatedSwitcherWidgetState extends State<AnimatedSwitcherWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedSwitcher(
              transitionBuilder: (child, animation) =>
                  ScaleTransition(scale: animation, child: child),
              duration: const Duration(seconds: 1),
              child: Text(
                count.toString(),
                style: const TextStyle(fontSize: 55),
                key: ValueKey(count),
              ),
            ),
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    count += 1;
                  });
                },
                child: const Text('Click to Add'))
          ],
        ),
      ),
    );
  }
}
