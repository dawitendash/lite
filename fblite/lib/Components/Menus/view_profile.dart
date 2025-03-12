import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: Colors.white,
      child: Row(
        children: [
          BuildIconButton(icon: Icons.person),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Boldtext(text: "Dawit Endashaw"),
                SizedBox(height: 4),
                NormalText("View profile"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
