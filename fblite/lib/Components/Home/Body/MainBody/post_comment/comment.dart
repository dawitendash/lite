import 'package:fblite/Components/Home/Body/MainBody/post/PostedContent.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/PosterProfile.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/Posttitle.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/SampleReactionData.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/postReaction.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Boldtext(text: "Military comics post", textSize: 16)),
            Search(),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Posterprofile(follow: "", sugesstedtext: ""),
            SizedBox(height: 5),
            Posttitle(),
            SizedBox(height: 5),
            Postedcontent(),
            SizedBox(height: 5),
            Samplereactiondata(),
            SizedBox(height: 5),
            Postreaction(),
            SizedBox(height: 10),
            Boldtext(text: "Most Relevent", textSize: 16),
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFFE4E6E8),
                  child: Icon(Icons.person),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Buillinkscotainer(textValue: "commented name"),
                    Buillinkscotainer(
                      textValue: "the best comment in the year.. ok bro ",
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
