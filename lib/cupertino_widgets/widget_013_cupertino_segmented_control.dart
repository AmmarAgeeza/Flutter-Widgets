import 'package:flutter/cupertino.dart';

class CupertinoSegmentedControlWidget extends StatefulWidget {
  const CupertinoSegmentedControlWidget({super.key});

  @override
  State<CupertinoSegmentedControlWidget> createState() =>
      _CupertinoSegmentedControlWidgetState();
}

class _CupertinoSegmentedControlWidgetState
    extends State<CupertinoSegmentedControlWidget> {
  String selectedText = 'Flutter';
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CupertinoSegmentedControl
        (
          children: {
            'Flutter': Container(
              color: selectedText=='Flutter'?CupertinoColors.activeOrange:CupertinoColors.white,
              padding: const EdgeInsets.all(18),
               width: double.infinity,
               child: const Text('Flutter',style: TextStyle(color: CupertinoColors.black),),),
            'Widgets': Container(
              color: selectedText=='Widgets'?CupertinoColors.activeOrange:CupertinoColors.white,
              padding: const EdgeInsets.all(18),
               width: double.infinity,
               child: const Text('Widgets',style: TextStyle(color: CupertinoColors.black),),
            ),
          },
          onValueChanged: (value) => setState(
            () => selectedText = value,
          ),
        ),const SizedBox(height: 150,),
        SizedBox(height: 150,
        child: Text(selectedText,style: const TextStyle(color: CupertinoColors.white,fontSize: 35),),),
      ],
    );
  }
}
