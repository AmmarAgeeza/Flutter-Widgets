import 'package:flutter/cupertino.dart';

class CupertinoScrollBarWidget extends StatelessWidget {
  const CupertinoScrollBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      
      radius: const Radius.circular(50),
      radiusWhileDragging: Radius.zero,
      thickness: 6,
      thicknessWhileDragging: 10,
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Center(
            child: Text(
              '$index',
              style: TextStyle(fontSize: index + 1,color: CupertinoColors.white),
            ),
          );
        },
        itemCount: 50,
      ),
    );
  }
}
