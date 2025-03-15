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
    const double verticalSpacing = 10.0;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: verticalSpacing,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Boldtext(text: "Posts", textSize: 20),
          SizedBox(height: verticalSpacing),
          Topseachbar(
            hintValue: "Post a status update",
            iconColor: Colors.black,
          ),
          SizedBox(height: verticalSpacing),
          HorizontalLinks(),
          SizedBox(height: verticalSpacing),
          BottomBorderline(height: 5.0),
          SizedBox(height: verticalSpacing),

          // Poster Profile with suggested text and follow
          Posterprofile(glopeicon: Icons.groups, sugesstedtext: "", follow: ""),

          SizedBox(height: verticalSpacing),
          BottomBorderline(),
          SizedBox(height: verticalSpacing),

          // User's Birthday Info (Centering content)
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
                  child: const Text(
                    '🧸',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Boldtext(text: "Born on March 2003", textSize: 12),
                NormalText("March 2003", 16),
              ],
            ),
          ),

          SizedBox(height: verticalSpacing),
          BottomBorderline(),

          // Post reactions section
          Postreaction(),
        ],
      ),
    );
  }
}
