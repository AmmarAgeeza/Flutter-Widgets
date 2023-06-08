import 'package:flutter/cupertino.dart';

class CupertinoTabScaffoldWidget extends StatefulWidget {
  const CupertinoTabScaffoldWidget({super.key});

  @override
  State<CupertinoTabScaffoldWidget> createState() => _CupertinoTabScaffoldWidgetState();
}

class _CupertinoTabScaffoldWidgetState extends State<CupertinoTabScaffoldWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: const [
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.add),label: 'Add'),
        BottomNavigationBarItem(icon: Icon(CupertinoIcons.minus),label: 'Minius'),
      ],),
      tabBuilder: (context,index){
        return Center(child: Icon(index==0?CupertinoIcons.add:CupertinoIcons.minus,size: 35,),);
      },
    );
  }
}