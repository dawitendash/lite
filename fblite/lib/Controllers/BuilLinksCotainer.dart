import 'package:flutter/material.dart';

class Buillinkscotainer extends StatefulWidget {
  final double textSize;
  final String textValue;
  final IconData? icons;
  final VoidCallback? method;
  final double iconSize;

  const Buillinkscotainer({
    Key? key,
    this.iconSize = 16.0,
    this.icons,
    required this.textValue,
    this.method,
    this.textSize = 14.0,
  }) : super(key: key);

  @override
  _BuildLinksContainerState createState() => _BuildLinksContainerState();
}

class _BuildLinksContainerState extends State<Buillinkscotainer> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.method,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 6, horizontal: 12),
        decoration: BoxDecoration(
          color: Color(0xFFE4E6E8),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (widget.icons != null) Icon(widget.icons, size: widget.iconSize),
            if (widget.icons != null && widget.textValue.isNotEmpty)
              SizedBox(width: 5),
            Text(
              widget.textValue,
              style: TextStyle(
                fontSize: widget.textSize,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            if (widget.icons == Icons.groups)
              Icon(Icons.arrow_drop_down, size: widget.iconSize),
          ],
        ),
      ),
    );
  }
}
