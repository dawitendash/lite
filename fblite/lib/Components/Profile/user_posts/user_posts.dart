import 'package:fblite/Components/Home/Body/MainBody/post/PosterProfile.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/postReaction.dart';
import 'package:fblite/Components/Home/Body/TopSeachBar.dart';
import 'package:fblite/Components/Profile/user_posts/horizontal_links.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/NormalText.dart';
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
          HorizontalLinks(),
          SizedBox(height: 10),
          BottomBorderline(height: 5.0),
          SizedBox(height: 10),
          Posterprofile(glopeicon: Icons.groups, sugesstedtext: "", follow: ""),
          SizedBox(height: 5),
          BottomBorderline(),
          SizedBox(height: 5),
          Center(
            child: Column(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '🧸',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Boldtext(text: "Born on March 2003", textSize: 12),
                NormalText("March 2003"),
              ],
            ),
          ),
          SizedBox(height: 5),
          SizedBox(height: 5),
          BottomBorderline(),
          Postreaction(),
        ],
      ),
    );
  }
}
