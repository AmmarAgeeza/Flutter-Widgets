import 'package:flutter/cupertino.dart';

class CupertinoActionSheetActionWidget extends StatefulWidget {
  const CupertinoActionSheetActionWidget({super.key});

  @override
  State<CupertinoActionSheetActionWidget> createState() =>
      _CupertinoActionSheetActionWidgetState();
}

class _CupertinoActionSheetActionWidgetState
    extends State<CupertinoActionSheetActionWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Center(
        child: CupertinoButton(
          onPressed: () {
            showCupertinoModalPopup(
              context: context,
              builder: (context) => CupertinoActionSheet(
                title: const Text('Flutter Widgets'),
                message: const Text('Your Message'),
                actions: <CupertinoActionSheetAction>[
                  CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Do Some Thing'),
                  ),
                  CupertinoActionSheetAction(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Do Some Thing Else'),
                  ),
                ],
              ),
            );
          },
          child: const Text('Cupertino Action Sheet Action'),
        ),
      ),
    );
  }
}
