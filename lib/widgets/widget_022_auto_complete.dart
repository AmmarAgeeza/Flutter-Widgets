import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class AutoCompleteWidget extends StatelessWidget {
  AutoCompleteWidget({super.key});
  final List<String> data = [
    'apple',
    'banana',
    'ammar',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue) {
            if (textEditingValue.text == '') {
              return const Iterable<String>.empty();
            }
            return data.where((String element) =>
                element.contains(textEditingValue.text.toLowerCase()));
          },
          onSelected: (item) {
            if (kDebugMode) {
              print(item);
            }
          },
        ),
      ),
    );
  }
}
