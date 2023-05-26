import 'package:flutter/cupertino.dart';

class CupertinoAlertDialogWidget extends StatelessWidget {
  const CupertinoAlertDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Text('Alert Dialog'),
      onPressed: () {
        showCupertinoDialog(
          context: context,
          builder: (context) => CupertinoAlertDialog(
            title: const Text('This is title'),
            content: const Text('This is content'),
            actions: <CupertinoDialogAction>[
              CupertinoDialogAction(
                  isDestructiveAction: true,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text('No')),
              CupertinoDialogAction(
                child: const Text('Yes'),
                onPressed: () {},
              ),
            ],
          ),
        );
      },
    );
  }
}
