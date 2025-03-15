import 'package:flutter/material.dart';

class Postedcontent extends StatefulWidget {
  @override
  _postedContentState createState() => _postedContentState();
}

class _postedContentState extends State<Postedcontent> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth, // Use screenWidth to adjust based on the screen size
      height:
          screenHeight *
          0.35, // Adjust based on screen size (35% of screen height)
      child: Image.asset(
        'assets/images/test.jpg',
        fit:
            BoxFit
                .cover, // Cover to maintain the aspect ratio without distortion
      ),
    );
  }
}
