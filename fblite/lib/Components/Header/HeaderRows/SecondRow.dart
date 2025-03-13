import 'package:fblite/Components/Friends/Friends.dart';
import 'package:fblite/Components/Messages/NoMessage/messages.dart';
import 'package:fblite/Components/Notification/NoNofications/Notification.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Views/Home.dart';
import 'package:fblite/Views/MarketPlace.dart';
import 'package:fblite/Views/Video.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondRow extends StatefulWidget {
  _secondRowState createState() => _secondRowState();
}

class _secondRowState extends State<SecondRow> {
  int _currentIndex = 0;
  List<Map<String, dynamic>> navItems = [
    {"icon": FontAwesomeIcons.house, "page": Home(), "color": Colors.blue},
    {
      "icon": FontAwesomeIcons.userGroup,
      "page": Friends(),
      "color": Colors.grey,
    },
    {
      "icon": FontAwesomeIcons.facebookMessenger,
      "page": Messages(),
      "color": Colors.grey,
    },
    {
      "icon": FontAwesomeIcons.bell,
      "page": Notifications(),
      "color": Colors.grey,
    },
    {"icon": FontAwesomeIcons.tv, "page": Video(), "color": Colors.grey},
    {
      "icon": FontAwesomeIcons.store,
      "page": MarketPlace(),
      "color": Colors.grey,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(navItems.length, (index) {
        return IconButton(
          onPressed: () {
            setState(() {
              navItems.first["color"] = Colors.grey;
              navItems[index]["color"] = Colors.blue;
            });
            Navigateto(context, navItems[index]["page"]);
          },
          icon: Icon(navItems[index]["icon"], color: navItems[index]["color"]),
        );
      }),
    );
  }
}
