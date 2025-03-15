import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Buildreactioncontainer extends StatefulWidget {
  IconData icon;
  String ReactionCount;
  VoidCallback? method;
  TextStyle? reactionTextStyle; // Added the optional text style parameter

  Buildreactioncontainer({
    Key? key,
    required this.icon,
    required this.ReactionCount,
    this.method,
    this.reactionTextStyle, // Accept the text style
  }) : super(key: key);

  @override
  _buildReactionContainer createState() => _buildReactionContainer();
}

class _buildReactionContainer extends State<Buildreactioncontainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.method != null) widget.method!();
      },
      child: Container(
        margin: EdgeInsets.all(2),
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
              FaIcon(widget.icon, size: 14),
              SizedBox(width: 2),
              Text(
                widget.ReactionCount,
                style: widget.reactionTextStyle ?? TextStyle(fontSize: 12),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
