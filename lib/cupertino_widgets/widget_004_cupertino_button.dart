import 'package:flutter/cupertino.dart';
class CupertinoButtonWidget extends StatelessWidget{
  const CupertinoButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        CupertinoButton(child: const Text('Cupertino Button'), onPressed: (){},),
        const SizedBox(height: 25,),
        CupertinoButton.filled(child: const Text('Cupertino Button'), onPressed: (){},),
      ],
    );
  }
}