// this widget is useful for giving information  about our app.

import 'package:flutter/material.dart';

class AboutListTileWidget extends StatelessWidget {
  const AboutListTileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AboutListTile(

          icon: Icon(Icons.info),
          applicationIcon: FlutterLogo(),
          applicationName: 'Flutter Widgets',
          applicationVersion: 'v1',
          applicationLegalese: 'Legalese',
          aboutBoxChildren: [
            Text(
              'This is an app contains all common widgets in flutter framework',
            )
          ],
        ),
      ),
    );
  }
}
