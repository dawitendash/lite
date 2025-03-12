import 'package:flutter/material.dart';

class Moretotrybuttons extends StatelessWidget {
  final IconData? icons;
  final String? textValue;
  final Color? colorValue;

  const Moretotrybuttons({
    Key? key,
    this.icons,
    this.textValue,
    this.colorValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          //  side: BorderSide(color: Color(0xFFDBD8D8)),
        ),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icons, color: colorValue, size: 20),
          SizedBox(width: 5),
          Text(textValue ?? '', style: TextStyle(fontSize: 14)),
          SizedBox(width: 10),
        ],
      ),
    );
  }
}
