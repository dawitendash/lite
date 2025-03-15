import 'package:flutter/material.dart';

class Posttitle extends StatelessWidget {
  final String title = " title is here!!";
  // Posttitle({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 10), // Padding remains the same
      child: Text(
        title, // Use the dynamic title
        textAlign:
            TextAlign.start, // This is the default, but added for clarity
        style: TextStyle(
          color: Color.fromARGB(255, 0, 0, 0), // Keep the color
          fontWeight: FontWeight.bold, // Keep the font weight
        ),
      ),
    );
  }
}
