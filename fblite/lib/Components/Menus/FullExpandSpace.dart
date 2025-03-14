import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fullexpandspaces extends StatelessWidget {
  IconData? icons;
  String? textValue;
  Color? colors = const Color.fromARGB(255, 146, 141, 141);
  Color? bg;
  VoidCallback? method;
  String? optionalText;
  Fullexpandspaces({
    Key? key,
    this.icons,
    this.colors,
    this.textValue,
    this.method,
    this.bg,
    this.optionalText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        method!();
      },
      child: Container(
        padding: EdgeInsets.only(top: 10, left: 6, right: 6, bottom: 6),
        color: bg,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisSize: MainAxisSize.min,
          children: [
            FaIcon(icons, color: colors),
            SizedBox(width: 10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    textValue!,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  if (optionalText != null) ...[NormalText(optionalText!)],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
