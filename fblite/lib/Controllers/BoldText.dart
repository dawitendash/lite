import 'package:flutter/material.dart';

class Boldtext extends StatefulWidget {
  String text = '';
  Boldtext(this.text);
  _boldTextState createState() => _boldTextState();
}

class _boldTextState extends State<Boldtext> {
  Widget build(BuildContext context) {
    return Text(
      widget.text,
      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }
}
