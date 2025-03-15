import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';

class Videoheader extends StatefulWidget {
  @override
  State<Videoheader> createState() => _VideoState();
}

class _VideoState extends State<Videoheader> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Boldtext(text: 'Videos'),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              BuildIconButton(icon: Icons.person),
              BuildIconButton(icon: Icons.download),
              Search(),
            ],
          ),
        ],
      ),
    );
  }
}
