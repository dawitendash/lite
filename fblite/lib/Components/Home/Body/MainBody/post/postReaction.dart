import 'package:fblite/Components/Home/Body/MainBody/post_comment/comment.dart';
import 'package:fblite/Components/Modals/bottom_modal/copy_modal.dart';
import 'package:fblite/Components/Modals/bottom_modal/share_modal.dart';
import 'package:fblite/Controllers/BuildReactionContainer.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Postreaction extends StatelessWidget {
  // Define a common TextStyle for reaction count to ensure consistency
  final TextStyle reactionTextStyle = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: Colors.grey[600], // Slightly gray color for text
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Buildreactioncontainer(
            icon: FontAwesomeIcons.thumbsUp,
            ReactionCount: "35K",
          ),
          Buildreactioncontainer(
            icon: FontAwesomeIcons.message,
            ReactionCount: "35",
            method: () {
              Navigateto(context, Comment());
            },
          ),
          Buildreactioncontainer(
            icon: FontAwesomeIcons.copy,
            ReactionCount: "322",
            method: () {
              CopyModal(context);
            },
          ),
          Buildreactioncontainer(
            icon: FontAwesomeIcons.share,
            ReactionCount: "876",
            method: () {
              ShareModal(context);
            },
          ),
        ],
      ),
    );
  }
}
