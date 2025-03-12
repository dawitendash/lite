import 'package:fblite/Components/Profile/profile.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Topseachbar extends StatefulWidget {
  String? hintValue;
  Color? iconColor;
  Topseachbar({Key? key, this.hintValue, this.iconColor}) : super(key: key);
  _topSearchBarState createState() => _topSearchBarState();
}

class _topSearchBarState extends State<Topseachbar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            GestureDetector(
              onTap: () {
                Navigateto(context, Profile());
              },
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Color(0xFFE4E6E8),
                    child: Icon(Icons.person),
                  ),
                  Container(
                    width: 10,
                    height: 10,
                    decoration: BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 40,
                child: SearchBar(
                  elevation: WidgetStateProperty.all(0.0),
                  hintText: widget.hintValue,
                  backgroundColor: WidgetStateProperty.all(Color(0xFFE4E6E8)),
                ),
              ),
            ),
            FaIcon(FontAwesomeIcons.images, color: widget.iconColor),
          ],
        ),
        SizedBox(height: 10),
        BottomBorderline(height: 2.0),
      ],
    );
  }
}
