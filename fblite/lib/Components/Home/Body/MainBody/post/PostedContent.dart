import 'package:flutter/material.dart';

class Postedcontent extends StatefulWidget {
  _postedContentState createState() => _postedContentState();
}

class _postedContentState extends State<Postedcontent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      child: Image.asset('assets/images/test.jpg', fit: BoxFit.fill),
    );
  }
}
