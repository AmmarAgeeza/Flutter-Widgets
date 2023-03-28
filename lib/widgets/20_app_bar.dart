import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AppBar'),
        centerTitle: true,
        actions: [IconButton(onPressed: (){}, icon: const Icon(Icons.notifications))],
        leading: IconButton(icon: const Icon(Icons.menu),onPressed: (){},),
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(28),
        bottomRight: Radius.circular(28),
        )),
      ),
      body: const Center(child: Text('AppBar')),
    );
  }
}
