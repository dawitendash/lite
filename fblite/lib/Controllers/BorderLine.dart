import 'package:flutter/material.dart';

class BottomBorderline extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  const BottomBorderline({this.height = 1.0, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 224, 220, 220),
      height: height,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(height);
}
