import 'package:flutter/cupertino.dart';

class CupertinoActivityIndicatorWidget extends StatelessWidget {
  const CupertinoActivityIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoActivityIndicator(
      radius: 25,
      color: CupertinoColors.activeOrange,
    );
  }
}