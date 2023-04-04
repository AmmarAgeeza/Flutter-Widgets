import 'package:flutter/material.dart';

class AnimatedPhysicalModelWidget extends StatefulWidget {
  const AnimatedPhysicalModelWidget({Key? key}) : super(key: key);

  @override
  State<AnimatedPhysicalModelWidget> createState() =>
      _AnimatedPhysicalModelWidgetState();
}

class _AnimatedPhysicalModelWidgetState
    extends State<AnimatedPhysicalModelWidget> {
  bool isFlat = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedPhysicalModel(
            shape: BoxShape.rectangle,
            elevation: isFlat ? 0 : 15,
            color: Colors.black,
            shadowColor: Colors.deepOrange,
            duration: const Duration(seconds: 2),
            child: const SizedBox(
              height: 300,
              width: 300,
              child: Text('AnimatedPhysicalModel Widget'),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 20,
            child: ElevatedButton(
              child: const Text('Click'),
              onPressed: () {
                setState(() {
                  isFlat = isFlat ? false : true;
                });
              },
            ),
          ),
        ],
      ),
    ));
  }
}
