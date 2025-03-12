import 'package:flutter/material.dart';

class MenuItems extends StatelessWidget {
  IconData? icons;
  String? textValue;
  Color? color;
  MenuItems({
    Key? key,
    required this.icons,
    required this.textValue,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10.0),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Icon(icons, color: color),
            SizedBox(height: 3),
            Text(textValue!, style: TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}
