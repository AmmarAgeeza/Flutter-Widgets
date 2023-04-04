import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedBuilderWidget extends StatefulWidget {
  const AnimatedBuilderWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedBuilderWidget> createState() => _AnimatedBuilderWidgetState();
}

class _AnimatedBuilderWidgetState extends State<AnimatedBuilderWidget>
    with TickerProviderStateMixin {
  late final AnimationController controller = AnimationController(
    duration: const Duration(seconds: 10),
    vsync: this,
  )..repeat();

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: controller,
          child: const FlutterLogo(
            size: 60,
          ),
          builder: (BuildContext context, Widget? child) {
            return Transform.rotate(
              angle: controller.value * 2 * pi,
              child: child,
            );
          },
        ),
      ),
    );
  }
}
