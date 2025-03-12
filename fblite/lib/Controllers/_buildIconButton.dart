import 'package:flutter/material.dart';

class BuildIconButton extends StatefulWidget {
  IconData icon;
  BuildIconButton({Key? key, required this.icon}) : super(key: key);
  _buildIconButtonState createState() => _buildIconButtonState();
}

class _buildIconButtonState extends State<BuildIconButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFE4E6E8),
        shape: BoxShape.circle,
      ),
      child: Icon(widget.icon, color: Colors.black, size: 22),
    );
  }
}
