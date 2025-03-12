import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class VideoHeaderLinks extends StatelessWidget {
  IconData icon;
  String text;
  VideoHeaderLinks({Key? key, required this.icon, required this.text})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          FaIcon(icon, color: Colors.black, size: 12),
          SizedBox(width: 5),
          Text(
            text,
            style: TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
