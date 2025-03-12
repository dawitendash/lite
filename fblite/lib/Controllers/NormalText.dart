import 'package:flutter/material.dart';

class NormalText extends StatefulWidget {
  String? text = "";
  NormalText(this.text);
  _normalTextState createState() => _normalTextState();
}

class _normalTextState extends State<NormalText> {
  @override
  Widget build(BuildContext context) {
    return Text(
      widget.text!,
      style: (TextStyle(color: const Color.fromARGB(255, 129, 127, 127))),
    );
  }
}
