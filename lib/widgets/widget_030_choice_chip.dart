import 'package:flutter/material.dart';

class ChoiceChipWidget extends StatefulWidget {
  const ChoiceChipWidget({super.key});

  @override
  State<ChoiceChipWidget> createState() => _ChoiceChipWidgetState();
}

class _ChoiceChipWidgetState extends State<ChoiceChipWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ChoiceChip(
          label: const Text('ChoiceChip'),
        selected: selected,
        selectedColor: Colors.deepOrangeAccent,
        onSelected: (newValue){
          setState(() {
            selected=newValue;
          });
        },
        ),
      ),
    );
  }
}
