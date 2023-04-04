import 'package:flutter/material.dart';

class AbsorbPointerWidget extends StatelessWidget {
  const AbsorbPointerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            SizedBox(
              height: 100,
              width: 200,
              child: ElevatedButton(
                onPressed: (){},
                child: null,
              ),
            ),
            SizedBox(
              height: 200,
              width: 100,
              child: AbsorbPointer(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepOrange
                  ),
                  onPressed: (){},
                  child: null,
                ),
              ),
            ),
          ],
        )
      ),
    );
  }
}