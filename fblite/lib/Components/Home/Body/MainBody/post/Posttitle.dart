import 'package:flutter/material.dart';

class Posttitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: TextAlign.start,
      'post title  #',
      style: TextStyle(
        color: const Color.fromARGB(255, 0, 0, 0),
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
