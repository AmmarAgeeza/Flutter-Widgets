import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showModalBottomSheet(context: context, builder: (context){
              return SizedBox(
                height: 250,
                child: Center(child: TextButton(onPressed: (){Navigator.pop(context);}, child: const Text('Close'))),
              );
            });
          },
          child: const Text('BottomSheet'),
        ),
      ),
    );
  }
}
