import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Controllers/vertical_border.dart';
import 'package:flutter/material.dart';

class HorizontalLinks extends StatelessWidget {
  const HorizontalLinks({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: screenWidth / 3.5,
            child: Fullexpandspaces(
              textValue: "Photo",
              icons: Icons.photo_library_sharp,
              colors: Colors.green,
            ),
          ),
          VerticalBorder(width: 2.0),

          // Second link: Check-in
          SizedBox(
            width: screenWidth / 3.5,
            child: Fullexpandspaces(
              textValue: "Check in",
              icons: Icons.location_on,
              colors: Colors.red,
            ),
          ),
          VerticalBorder(width: 2.0),
          SizedBox(
            width: screenWidth / 3.5,
            child: Fullexpandspaces(
              textValue: "Life Event",
              icons: Icons.flag,
              colors: const Color.fromARGB(255, 76, 102, 175),
            ),
          ),
        ],
      ),
    );
  }
}
