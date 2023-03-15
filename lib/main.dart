import 'package:flutter/material.dart';

import 'widgets/9_animated_cross_fade.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      home: AnimatedCrossFadeWidget(),
    );
  }
}
