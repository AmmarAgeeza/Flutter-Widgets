import 'package:flutter/cupertino.dart';

class CupertinoSliderWidget extends StatefulWidget {
  const CupertinoSliderWidget({super.key});

  @override
  State<CupertinoSliderWidget> createState() => _CupertinoSliderWidgetState();
}

class _CupertinoSliderWidgetState extends State<CupertinoSliderWidget> {
  var selectedVal = 0.0;
  @override
  Widget build(BuildContext context) {
    return CupertinoSlider(
      value: selectedVal,
      onChanged: (newval) => setState(
        () => selectedVal = newval,
      ),
      divisions: 10,
      min: 0,
      max: 10,
    );
  }
}
