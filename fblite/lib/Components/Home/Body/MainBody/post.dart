import 'package:fblite/Components/Home/Body/MainBody/PostedContent.dart';
import 'package:fblite/Components/Home/Body/MainBody/PosterProfile.dart';
import 'package:fblite/Components/Home/Body/MainBody/Posttitle.dart';
import 'package:fblite/Components/Home/Body/MainBody/SampleReactionData.dart';
import 'package:fblite/Components/Home/Body/MainBody/postReaction.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class post extends StatefulWidget {
  _post createState() => _post();
}

class _post extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Posterprofile(),
        Posttitle(),
        Postedcontent(),
        Samplereactiondata(),
        Postreaction(),
        BottomBorderline(height: 3.0),
      ],
    );
  }
}
