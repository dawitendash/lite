import 'package:fblite/Controllers/BuildReactionContainer.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Postreaction extends StatefulWidget {
  _postreaction createState() => _postreaction();
}

class _postreaction extends State<Postreaction> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Buildreactioncontainer(
          icon: FontAwesomeIcons.thumbsUp,
          ReactionCount: "35K",
        ),
        Buildreactioncontainer(
          icon: FontAwesomeIcons.message,
          ReactionCount: "35",
        ),
        Buildreactioncontainer(
          icon: FontAwesomeIcons.copy,
          ReactionCount: "322",
        ),
        Buildreactioncontainer(
          icon: FontAwesomeIcons.share,
          ReactionCount: "876",
        ),
      ],
    );
  }
}
