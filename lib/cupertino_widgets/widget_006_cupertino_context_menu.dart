import 'package:flutter/cupertino.dart';

class CupertinoContextMenuWidget extends StatelessWidget {
  const CupertinoContextMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        height: 300,
        width: 300,
        child: CupertinoContextMenu(
          actions: [
            CupertinoContextMenuAction(child: const Text('Book'),onPressed: (){Navigator.pop(context);},),
            CupertinoContextMenuAction(child: const Text('Cancel'),onPressed: (){Navigator.pop(context);},)
          ],
          child: const Icon(CupertinoIcons.airplane,size: 65,),
        ),
      ),
    );
  }
}
