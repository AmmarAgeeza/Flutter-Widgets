import 'package:flutter/cupertino.dart';

class CupertinoSearchTextFieldWidget extends StatelessWidget {
  CupertinoSearchTextFieldWidget({super.key});
  final TextEditingController searchController =
      TextEditingController(text: 'Flutter Widgets');
  @override
  Widget build(BuildContext context) {
    return CupertinoSearchTextField(
      controller: searchController,
    );
  }
}
