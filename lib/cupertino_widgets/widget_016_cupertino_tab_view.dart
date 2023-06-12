import 'package:flutter/cupertino.dart';

class CupertinoTabViewWidget extends StatefulWidget {
  const CupertinoTabViewWidget({super.key});

  @override
  State<CupertinoTabViewWidget> createState() => _CupertinoTabViewWidgetState();
}

class _CupertinoTabViewWidgetState extends State<CupertinoTabViewWidget> {
  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.add), label: 'Add'),
          BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.minus), label: 'Minius'),
        ],
      ),
      tabBuilder: (context, index) {
        return CupertinoTabView(builder: (context) {
          return Center(
            child: Icon(index==0?CupertinoIcons.add:CupertinoIcons.minus),
          );
        });
      },
    );
  }
}
