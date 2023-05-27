import 'package:flutter/cupertino.dart';

class CupertinoPageRouteWidget extends StatelessWidget {
  const CupertinoPageRouteWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CupertinoButton(
          child: const Text('Navigate to Screen 2'),
          onPressed: () {
            Navigator.push(
              context,
              CupertinoPageRoute(builder: (_) => const PageTwo()),
            );
          }),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      child: Center(
        child: Text(' Screen 2'),
      ),
    );
  }
}
