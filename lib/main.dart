import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/cupertino_widgets/widget_001_cupertino_action_sheet_action.dart';

import 'cupertino_widgets/widget_014_cupertino_slider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return !Platform.isAndroid
        ? const MaterialApp(
            title: 'Flutter Widgets',
            debugShowCheckedModeBanner: false,
            home: Scaffold(
              body: CupertinoActionSheetActionWidget(),
            ),
          )
        :  const CupertinoApp(
            debugShowCheckedModeBanner: false,
            theme: CupertinoThemeData(
                scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47),
                primaryColor: CupertinoColors.systemOrange,
                textTheme: CupertinoTextThemeData(
                  primaryColor: CupertinoColors.white,
                )),
            home: CupertinoPageScaffold(
                navigationBar: CupertinoNavigationBar(
                  middle: Text('Cupertino Widgets'),
                ),
                child: Center(
                  child: CupertinoSliderWidget(),
                )),
          );
  }
}
