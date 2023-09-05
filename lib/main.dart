import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/packages/packages_001_internet_connection_checker.dart';

import 'cupertino_widgets/widget_017_cuperino_text_field.dart';

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
              body: Center(
                child: InternetConnectionCheckerPakckage(),
              ),
            ),
          )
        : const CupertinoApp(
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
                  child: CuertinoTextFieldWidget(),
                )),
          );
  }
}
