import 'package:flutter/material.dart';
import 'package:flutter_widgets/widgets/3_absorb_pointer.dart';

import 'widgets/1_about_dialog.dart';
import 'widgets/2_about_list_tile.dart';

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
      home: AbsorbPointerWidget(),
    );
  }
}

