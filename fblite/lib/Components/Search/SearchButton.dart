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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
        side: BorderSide(
          color: Color(0xFFDBD8D8),
          width: 1,
        ), // Add border color for visual distinction
        minimumSize: Size(
          120,
          50,
        ), // Set minimum size for a consistent button size
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icons, color: colorValue, size: 20),
          SizedBox(width: 8), // Increase space between the icon and text
          Text(
            textValue ?? '',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w500, // Make the text a bit more prominent
            ),
          ),
        ],
      ),
    );
  }
}
