import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/14_animated_padding.dart';

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
      home: AnimatedPaddingWidget(),
    );
  }
}
