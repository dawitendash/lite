import 'package:flutter/material.dart';

class NormalText extends StatelessWidget {
  String? text = "";
  double? textSize;
  NormalText(this.text, this.textSize);
  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: (TextStyle(
        color: const Color.fromARGB(255, 129, 127, 127),
        fontSize: textSize,
      )),
    );
  }
}
