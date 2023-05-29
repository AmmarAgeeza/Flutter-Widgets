import 'package:flutter/cupertino.dart';

class CupertinoPopupSurfaceWidget extends StatelessWidget {
  const CupertinoPopupSurfaceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      child: const Text('Click'),
      onPressed: () {
        showCupertinoModalPopup(
          context: context,
          builder: (context) => CupertinoPopupSurface(
            child: Container(
              width: double.infinity,
              height: 250,
              color: CupertinoColors.white,
              alignment: Alignment.center,
              child: CupertinoButton(
                  child: const Text('Close'),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ),
        );
      },
    );
  }
}
