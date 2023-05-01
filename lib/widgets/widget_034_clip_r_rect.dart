import 'package:flutter/material.dart';

class ClipRRectWidget extends StatelessWidget {
  const ClipRRectWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(28),
          child: Container(
            height: 300,
            width: 300,
            color: Colors.deepOrange,
          ),
        ),
      ),
    );
  }
}

