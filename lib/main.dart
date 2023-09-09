import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_widgets/packages/packages_001_internet_connection_checker.dart';

import 'cupertino_widgets/widget_017_cuperino_text_field.dart';
// splash from ammar
//login from anas
//another login from ammar hh

//register from abdo


// Steps
//1. checkout maseter
//2. fetch maseter [upadte master]
//3. create branch from master [new Task] ||  if i aready have branch, use git merge master
//4. code the task.
//5. commit
//6. checkout maseter
//7. fetch maseter [upadte master]
//8. merge master with my branch
//9. push to GitHub
//10. pull request


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
