import 'package:flutter/cupertino.dart';

class CuertinoTextFieldWidget extends StatelessWidget {
  const CuertinoTextFieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(
      controller: TextEditingController(text: 'text'),
    );
  }
}
