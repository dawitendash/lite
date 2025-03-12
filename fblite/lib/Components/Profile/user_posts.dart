import 'package:fblite/Components/Home/Body/MainBody/PosterProfile.dart';
import 'package:fblite/Components/Home/Body/MainBody/postReaction.dart';
import 'package:fblite/Components/Home/Body/TopSeachBar.dart';
import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Boldtext(text: "Posts", textSize: 20),
          SizedBox(height: 10),
          Topseachbar(
            hintValue: "Post a status update",
            iconColor: Colors.black,
          ),
          SizedBox(height: 10),
          Row(
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
              SizedBox(
                width: 120,
                child: Fullexpandspaces(
                  textValue: "Check in",
                  icons: Icons.location_on,
                  colors: Colors.red,
                ),
              ),
              SizedBox(
                width: 120,
                child: Fullexpandspaces(
                  textValue: "Life Event",
                  icons: Icons.flag,
                  colors: const Color.fromARGB(255, 76, 102, 175),
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          BottomBorderline(height: 5.0),
          SizedBox(height: 10),
          Posterprofile(glopeicon: Icons.groups, sugesstedtext: "", follow: ""),
          SizedBox(height: 5),
          BottomBorderline(),
          SizedBox(height: 5),
          Center(
            child: Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
              child: Text('🧸', style: TextStyle(color: Colors.white)),
            ),
          ),
          SizedBox(height: 5),
          BottomBorderline(),
          Postreaction(),
        ],
      ),
    );
  }
}
