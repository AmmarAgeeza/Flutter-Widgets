import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
            label: Text('ChipWidget'),
            onDeleted: () {
              print('deleted');
            }),
      ),
    );
  }
}
