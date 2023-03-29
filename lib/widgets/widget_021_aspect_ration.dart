import 'package:flutter/material.dart';

class AspetRationWidget extends StatefulWidget {
  const AspetRationWidget({super.key});

  @override
  State<AspetRationWidget> createState() => _AspetRationWidgetState();
}

class _AspetRationWidgetState extends State<AspetRationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Aspect Ratio'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: double.infinity,
          color: Colors.amber,
          alignment: Alignment.center,
          child: AspectRatio(
            aspectRatio: 4/3,
            child: Container(
              color: Colors.blueAccent,
            ),
          ),
        ),
      ),
    );
  }
}
