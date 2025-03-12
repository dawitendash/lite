import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Links extends StatefulWidget {
  _videoState createState() => _videoState();
}

class _videoState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Buillinkscotainer(icons: Icons.tv, textValue: "For you"),
        Buillinkscotainer(icons: FontAwesomeIcons.film, textValue: "Reels"),
        Buillinkscotainer(icons: FontAwesomeIcons.video, textValue: "Live"),
        Buillinkscotainer(
          icons: FontAwesomeIcons.userFriends,
          textValue: "Following",
        ),
        Buillinkscotainer(icons: FontAwesomeIcons.bookmark, textValue: "Saved"),
      ],
    );
  }
}
