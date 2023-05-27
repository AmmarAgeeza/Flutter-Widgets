import 'package:flutter/cupertino.dart';

class CupertinoDatePickerWidget extends StatefulWidget {
  const CupertinoDatePickerWidget({super.key});

  @override
  State<CupertinoDatePickerWidget> createState() =>
      _CupertinoDatePickerWidgetState();
}

class _CupertinoDatePickerWidgetState extends State<CupertinoDatePickerWidget> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Center(
        child: CupertinoButton(
      child:  Text('${dateTime.day}-${dateTime.month}-${dateTime.year}'),
      onPressed: () {
        showCupertinoModalPopup(
            context: context,
            builder: (context) => SizedBox(
                  height: 250,
                  child: CupertinoDatePicker(
                    backgroundColor: CupertinoColors.white,
                    initialDateTime: dateTime,
                    onDateTimeChanged: (DateTime newDate) => setState(() {
                      dateTime = newDate;
                    }),
                    use24hFormat: true,
                    // mode: CupertinoDatePickerMode.time,
                     mode: CupertinoDatePickerMode.date,
                  ),
                ));
      },
    ));
  }
}
