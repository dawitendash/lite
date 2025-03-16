import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:flutter/material.dart';

class Links extends StatefulWidget {
  @override
  State<Links> createState() => _LinksState();
}

class _LinksState extends State<Links> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 10,
          runSpacing: 10,
          alignment: WrapAlignment.center,
          children: [
            Buillinkscotainer(
              iconSize: 10,
              textSize: 10,
              icons: Icons.tv,
              textValue: "For you",
            ),
            Buillinkscotainer(
              iconSize: 10,
              textSize: 10,
              icons: Icons.movie,
              textValue: "Reels",
            ),
            Buillinkscotainer(
              textSize: 10,
              iconSize: 10,
              icons: Icons.video_library_outlined,
              textValue: "Live",
            ),
            Buillinkscotainer(
              iconSize: 10,
              textSize: 10,
              icons: Icons.groups,
              textValue: "Following",
            ),
            Buillinkscotainer(
              iconSize: 10,
              textSize: 10,
              icons: Icons.bookmark,
              textValue: "Saved",
            ),
          ],
        ),
      ),
    );
  }
}
