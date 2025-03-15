import 'package:flutter/material.dart';

class HeaderBar extends StatelessWidget {
  final MainAxisAlignment style;
  final String displayText;

  const HeaderBar({
    Key? key,
    required this.displayText,
    this.style = MainAxisAlignment.center,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
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
      ),
    );
  }
}
