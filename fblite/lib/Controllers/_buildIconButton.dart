import 'package:flutter/material.dart';

class BuildIconButton extends StatelessWidget {
  IconData icon;
  VoidCallback? method;
  BuildIconButton({Key? key, required this.icon, this.method})
    : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Color(0xFFE4E6E8),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: () {
          method!();
        },
        icon: Icon(icon, color: Colors.black, size: 22),
      ),
    );
  }
}
