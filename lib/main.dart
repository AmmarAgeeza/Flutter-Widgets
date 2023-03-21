import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/15_animated_physical_model.dart';

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
      home: AnimatedPhysicalModelWidget(),
    );
  }
}
