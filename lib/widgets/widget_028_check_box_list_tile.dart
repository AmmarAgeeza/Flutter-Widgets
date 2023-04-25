import 'package:flutter/material.dart';

class CheckBoxListTileWidget extends StatefulWidget {
  const CheckBoxListTileWidget({super.key});

  @override
  State<CheckBoxListTileWidget> createState() => _CheckBoxListTileWidgetState();
}

class _CheckBoxListTileWidgetState extends State<CheckBoxListTileWidget> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CheckboxListTile(
            title: const Text('CheckBoxListTileWidget'),
            controlAffinity: ListTileControlAffinity.leading,
            tileColor: Colors.grey,
            subtitle: const Text('subtitle'),
            value: isSelected,
            activeColor: Colors.blueAccent,
            checkColor: Colors.black,
            onChanged: (newValue) {
              setState(() {
                isSelected = newValue!;
              });
            }),
      ),
    );
  }
}
