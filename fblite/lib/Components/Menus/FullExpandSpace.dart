import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Fullexpandspaces extends StatelessWidget {
  IconData? icons;
  String? textValue;
  Color? colors = const Color.fromARGB(255, 146, 141, 141);
  Color? bg;
  Fullexpandspaces({Key? key, this.icons, this.colors, this.textValue, this.bg})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      color: bg,
      child: Row(
        children: [
          FaIcon(icons, color: colors),
          SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(textValue!, style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
