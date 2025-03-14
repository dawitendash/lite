import 'package:fblite/Components/Home/Body/MainBody/post/PostedContent.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/PosterProfile.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/Posttitle.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/SampleReactionData.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/postReaction.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class post extends StatefulWidget {
  _post createState() => _post();
}

class _post extends State<post> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Posterprofile(
          verifyicon: Icons.verified,
          follow: "follow",
          sugesstedtext: "Suggested for you .",
          glopeicon: FontAwesomeIcons.globe,
          closeicon: Icons.close,
        ),
        Posttitle(),
        Postedcontent(),
        Samplereactiondata(),
        Postreaction(),
        BottomBorderline(height: 3.0),
      ],
    );
  }
}
