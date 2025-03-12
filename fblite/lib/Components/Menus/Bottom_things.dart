import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class BottomThings extends StatelessWidget {
  const BottomThings({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BottomBorderline(),
        Fullexpandspaces(
          icons: Icons.settings,
          textValue: "Setting & Privacy",
          colors: Colors.grey,
        ),
        BottomBorderline(),
        BottomBorderline(),
        Fullexpandspaces(
          icons: Icons.question_mark,
          textValue: "Help & Support",
          colors: Colors.grey,
        ),
        BottomBorderline(),
        BottomBorderline(height: 0.5),
        Fullexpandspaces(
          icons: Icons.logout_rounded,
          textValue: "Log out",
          colors: Colors.grey,
        ),
      ],
    );
  }
}
