import 'package:fblite/Components/Home/Body/MainBody/post/PostReaction.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/PostedContent.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/PosterProfile.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/Posttitle.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/SampleReactionData.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // Allow the post to be scrollable if content exceeds screen height
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Posterprofile(
            verifyicon: Icons.verified,
            follow: "Follow",
            sugesstedtext: "Suggested for you.",
            glopeicon: FontAwesomeIcons.globe,
            closeicon: Icons.close,
          ),
          SizedBox(height: 10),
          Posttitle(),
          SizedBox(height: 10),
          Postedcontent(),
          SizedBox(height: 10),
          Samplereactiondata(),
          SizedBox(height: 10),
          Postreaction(),
          BottomBorderline(height: 3.0),
        ],
      ),
    );
  }
}
