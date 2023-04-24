import 'package:flutter/material.dart';

class BuilderWidget extends StatelessWidget {
  const BuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: myWidget(),
    );
  }

  Widget myWidget() => Builder(
        builder: (BuildContext context) {
          return Text(
            'Data',
            style: Theme.of(context).textTheme.displayLarge,
          );
        },
      );
}
