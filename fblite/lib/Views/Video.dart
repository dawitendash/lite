import 'package:fblite/Components/Header/HeaderRows/SecondRow.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/PostedContent.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/PosterProfile.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/Posttitle.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/SampleReactionData.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/postReaction.dart';
import 'package:fblite/Components/Videos/Body/VideoHeader/videoheader.dart';
import 'package:fblite/Components/Videos/Body/VidowLinks/Links.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class Video extends StatefulWidget {
  _videoState createState() => _videoState();
}

class _videoState extends State<Video> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SecondRow(),
        bottom: BottomBorderline(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Videoheader(),
            SizedBox(height: 20),
            Links(),
            SizedBox(height: 10),
            BottomBorderline(),
            SizedBox(height: 10),
            Posterprofile(follow: "", glopeicon: Icons.abc, sugesstedtext: ""),
            SizedBox(height: 10),
            Posttitle(),
            SizedBox(height: 5),
            Postedcontent(),
            SizedBox(height: 10),
            Samplereactiondata(),
            SizedBox(height: 10),
            Postreaction(),
          ],
        ),
      ),
    );
  }
}
