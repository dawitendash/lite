import 'package:fblite/Components/Home/Body/MainBody/post/PostedContent.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/PosterProfile.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/Posttitle.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/SampleReactionData.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/postReaction.dart';
import 'package:fblite/Components/Home/Body/MainBody/post_comment/comment_list.dart';
import 'package:fblite/Components/Home/Body/MainBody/post_comment/wrtie_comment.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:flutter/material.dart';

class Comment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Center(child: Boldtext(text: "Military Comics Post", textSize: 16)),
            Search(),
          ],
        ),
        elevation: 1,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Posterprofile(follow: "", sugesstedtext: ""),
            SizedBox(height: 10),
            Posttitle(),
            SizedBox(height: 10),
            Postedcontent(),
            SizedBox(height: 10),
            Samplereactiondata(),
            SizedBox(height: 10),
            Postreaction(),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: CommentList(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: WrtieComment(),
      ),
    );
  }
}
