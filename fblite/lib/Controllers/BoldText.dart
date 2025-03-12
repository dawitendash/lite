import 'package:flutter/material.dart';

class Boldtext extends StatefulWidget {
  String? text;
  double? textSize = 24.0;
  Boldtext({Key? key, this.text, this.textSize}) : super(key: key);
  _boldTextState createState() => _boldTextState();
}

class _boldTextState extends State<Boldtext> {
  Widget build(BuildContext context) {
    return Text(
      widget.text!,
      style: TextStyle(fontSize: widget.textSize, fontWeight: FontWeight.bold),
    );
  }
}
