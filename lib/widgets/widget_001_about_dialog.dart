//this widget is useful for giving information  about our app.

import 'package:flutter/material.dart';

class AboutDialogWidget extends StatelessWidget {
  const AboutDialogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Text('Show About Dialog'),
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) => const AboutDialog(
                  applicationIcon: FlutterLogo(),
                  applicationName: 'Flutter Widgets',
                  applicationVersion: 'v1',
                  applicationLegalese: 'Legalese',
                  children: [
                    Text(
                        'This is an app contains all common widgets in flutter framework')
                  ],
                ));
          },
        ),
      ),
    );
  }
}
