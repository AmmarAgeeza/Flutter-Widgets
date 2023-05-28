import 'package:flutter/cupertino.dart';

class CupertinoPickerWidget extends StatefulWidget {
  const CupertinoPickerWidget({super.key});

  @override
  State<CupertinoPickerWidget> createState() => _CupertinoPickerWidgetState();
}

class _CupertinoPickerWidgetState extends State<CupertinoPickerWidget> {
  int selectedItem = 1;
  @override
  Widget build(BuildContext context) {
    return CupertinoButton.filled(
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (context) {
                return SizedBox(
                  height: 250,
                  child: CupertinoPicker(
                    itemExtent: 30,
                    backgroundColor: CupertinoColors.white,
                    scrollController:
                        FixedExtentScrollController(initialItem: 1),
                    onSelectedItemChanged: (int value) {
                      setState(() {
                        selectedItem = value;
                      });
                    },
                    children: const [
                      Text('1'),
                      Text('2'),
                      Text('3'),
                    ],
                  ),
                );
              });
        },
        child: Text('Cupertino Picker =$selectedItem'));
  }
}
