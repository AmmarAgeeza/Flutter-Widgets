import 'package:flutter/material.dart';

import 'widgets/11_animated_icon.dart';
import 'widgets/12_animated_list.dart';

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
      home: AnimatedListWidget(),
    );
  }
}
