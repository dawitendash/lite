import 'package:flutter/material.dart';

class VerticalBorder extends StatelessWidget {
  double? width = 1.0;
  VerticalBorder({Key? key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 148, 144, 144),
      width: width,
      height: 30,
    );
  }

  @override
  Size get preferredSize => Size.fromWidth(width!);
}
