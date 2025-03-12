import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';

class Videoheader extends StatefulWidget {
  _videoState createState() => _videoState();
}

class _videoState extends State<Videoheader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Boldtext(text: 'Videos'),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BuildIconButton(icon: Icons.person),
            SizedBox(width: 5),
            BuildIconButton(icon: Icons.download),
            SizedBox(width: 5),
            Search(),
          ],
        ),
      ],
    );
  }
}
