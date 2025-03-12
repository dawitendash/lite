import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Buildreactioncontainer extends StatefulWidget {
  IconData icon;
  String ReactionCount;
  Buildreactioncontainer({
    Key? key,
    required this.icon,
    required this.ReactionCount,
  }) : super(key: key);
  _buildReactionContainer createState() => _buildReactionContainer();
}

class _buildReactionContainer extends State<Buildreactioncontainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      height: 40,
      width: 80,
      decoration: BoxDecoration(
        color: Color(0xFFE4E6E8),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FaIcon(widget.icon, size: 18),
            SizedBox(width: 5),
            Text(widget.ReactionCount, style: TextStyle(fontSize: 14)),
          ],
        ),
      ),
    );
  }
}
