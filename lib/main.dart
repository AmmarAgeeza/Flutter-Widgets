import 'package:flutter/material.dart';
import 'package:flutter_widgets/cupertino_widgets/widget_001_cupertino_action_sheet_action.dart';

import 'cupertino_widgets/widget_002_cupertino_app.dart';

void main() {
  runApp(const CupertinoAppWidget());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Widgets',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: CupertinoActionSheetActionWidget(),
      ),
    );
  }
}
