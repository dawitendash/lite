import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final String? textValue;
  final VoidCallback? method;
  final foregroundColor;
  final backgroundColor;
  Button({
    Key? key,
    required this.textValue,
    required this.method,
    this.foregroundColor,
    this.backgroundColor,
  }) : super(key: key);
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        widget.method!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.backgroundColor,
        foregroundColor: widget.foregroundColor,
        minimumSize: const Size(double.infinity, 50),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      ),
      child: Text(widget.textValue!),
    );
  }
}
