import 'package:fblite/Components/CreateStory/create_story.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Views/profile.dart';
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
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
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
                  child: GestureDetector(
                    onTap: () {
                      Navigateto(context, CreateStory());
                    },
                    child: Container(
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 10, right: 10),
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Color(0xFFE4E6E8),
                        borderRadius: BorderRadius.circular(20),
                      ),

                      child: Text(widget.hintValue!),
                    ),
                  ),
                ),
              ),

              FaIcon(FontAwesomeIcons.images, color: widget.iconColor),
            ],
          ),
          SizedBox(height: 10),
          BottomBorderline(height: 2.0),
        ],
      ),
    );
  }
}
