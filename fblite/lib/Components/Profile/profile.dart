import 'package:fblite/Components/Profile/ButtonTocreateStory.dart';
import 'package:fblite/Components/Profile/profile_body.dart';
import 'package:fblite/Components/Profile/upgrade_profile.dart';
import 'package:fblite/Components/Profile/user_posts.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Dawit Endashaw ", style: TextStyle(fontSize: 20)),
            Search(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
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
                Positioned(
                  bottom: 1,
                  left: 2,
                  child: Boldtext(text: "Dawit Endashaw"),
                ),
              ],
            ),
            // SizedBox(height: 10,),
            Buttontocreatestory(),
            SizedBox(height: 5),
            BottomBorderline(),
            SizedBox(height: 5),
            UpgradeProfile(),
            SizedBox(height: 5),
            ProfileBody(),
            SizedBox(height: 5),
            UserPosts(),
          ],
        ),
      ),
    );
  }
}
