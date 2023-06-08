import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class ChipWidget extends StatelessWidget {
  const ChipWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Chip(
            label: const Text('ChipWidget'),
            onDeleted: () {
              if (kDebugMode) {
                print('deleted');
              }
            }),
      ),
    );
  }
}
