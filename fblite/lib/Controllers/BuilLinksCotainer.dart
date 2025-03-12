import 'package:flutter/material.dart';

class Buillinkscotainer extends StatefulWidget {
  String? textValue;
  IconData? icons;

  Buillinkscotainer({this.icons, this.textValue, Key? key}) : super(key: key);

  @override
  State<Buillinkscotainer> createState() => _BuillinkscotainerState();
}

class _BuillinkscotainerState extends State<Buillinkscotainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
      decoration: BoxDecoration(
        color: Color(0xFFE4E6E8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          if (widget.icons != null) ...[Icon(widget.icons)],
          if (widget.textValue != null)
            Text(
              widget.textValue!,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
        ],
      ),
    );
  }
}
