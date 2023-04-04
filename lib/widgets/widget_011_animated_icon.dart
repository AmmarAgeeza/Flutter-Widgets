import 'package:flutter/material.dart';

class AnimatedIconWidget extends StatefulWidget {
  const AnimatedIconWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedIconWidget> createState() => _AnimatedIconWidgetState();
}

class _AnimatedIconWidgetState extends State<AnimatedIconWidget>
    with TickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(
        seconds: 2,
      ),
    );
    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  bool isPlay = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            if (isPlay) {
              animationController.forward();
              isPlay = false;
            } else {
              animationController.reverse();
              isPlay = true;
            }
          },
          child: AnimatedIcon(
            color: Colors.deepOrange,
              icon: AnimatedIcons.play_pause, progress: animationController,size: 120,),
        ),
      ),
    );
  }
}
