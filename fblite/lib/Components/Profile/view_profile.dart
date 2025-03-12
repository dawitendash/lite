import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ViewProfile extends StatelessWidget {
  const ViewProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 150,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                height: 70,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 155, 157, 159),
                ),
              ),
              Container(alignment: Alignment.bottomCenter, height: 70),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, left: 10),
              width: 80,
              height: 80,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 198, 199, 200),
                shape: BoxShape.circle,
              ),
              child: Icon(Icons.person),
            ),
            BuildIconButton(icon: FontAwesomeIcons.camera),
          ],
        ),
        Positioned(
          right: 10,
          top: 30,
          child: BuildIconButton(icon: FontAwesomeIcons.camera),
        ),
        Positioned(bottom: 1, left: 2, child: Boldtext(text: "Dawit Endashaw")),
      ],
    );
  }
}
