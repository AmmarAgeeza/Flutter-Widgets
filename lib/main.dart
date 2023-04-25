import 'package:flutter/material.dart';

import 'widgets/widget_028_check_box_list_tile.dart';

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
      home: CheckBoxListTileWidget(),
    );
  }
}
