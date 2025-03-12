import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Controllers/vertical_border.dart';
import 'package:flutter/material.dart';

class HorizontalLinks extends StatelessWidget {
  const HorizontalLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          width: 120,
          child: Fullexpandspaces(
            textValue: "Photo",
            icons: Icons.photo_library_sharp,
            colors: Colors.green,
          ),
        ),
        VerticalBorder(width: 2.0),
        SizedBox(
          width: 120,
          child: Fullexpandspaces(
            textValue: "Check in",
            icons: Icons.location_on,
            colors: Colors.red,
          ),
        ),
        VerticalBorder(width: 2.0),
        SizedBox(
          width: 120,
          child: Fullexpandspaces(
            textValue: "Life Event",
            icons: Icons.flag,
            colors: const Color.fromARGB(255, 76, 102, 175),
          ),
        ),
      ],
    );
  }
}
