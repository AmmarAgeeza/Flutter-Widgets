import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          color: Colors.deepOrange,
          elevation: 20.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Text('This is card'),
                TextButton(onPressed: () {}, child: const Text('Click!'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
