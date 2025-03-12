import 'package:fblite/Components/Menus/BodyLinks.dart';
import 'package:fblite/Components/Menus/Bottom_things.dart';
import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Components/Menus/view_profile.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Menus_screen extends StatelessWidget {
  const Menus_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[200], // Light grey background like Facebook Lite
      appBar: AppBar(
        backgroundColor: Colors.white, // White app bar like Facebook Lite
        elevation: 0.5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [Boldtext(text: 'Menu'), Search()],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            ViewProfile(),
            SizedBox(height: 10),
            Fullexpandspaces(
              icons: FontAwesomeIcons.heart,
              colors: Colors.red,
              textValue: "Invite friends",
              bg: Colors.white,
            ),
            SizedBox(height: 10),
            Bodylinks(),
            BottomThings(),
          ],
        ),
      ),
    );
  }
}
