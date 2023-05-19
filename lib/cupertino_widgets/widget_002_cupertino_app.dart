import 'package:flutter/cupertino.dart';

class CupertinoAppWidget extends StatelessWidget {
  const CupertinoAppWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 18, 32, 47),
        primaryColor: CupertinoColors.systemOrange,textTheme: CupertinoTextThemeData(
           primaryColor: CupertinoColors.white,
        )
      ),
      home: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
          middle: Text('CupertinoApp'),
        ),
          child: Center(
        child: Text('Cupertino'),
      )),
    );
  }
}
