import 'package:flutter/material.dart';

class headerBar extends StatelessWidget {
  MainAxisAlignment style = MainAxisAlignment.center;
  String displayText;
  headerBar(this.displayText, this.style, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: style,
      children: [
        Text(
          displayText,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
        SizedBox(width: 5),
        Icon(Icons.language, color: Colors.black),
      ],
    );
  }
}
