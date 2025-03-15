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
  @override
  _secondRowState createState() => _secondRowState();
}

class _secondRowState extends State<SecondRow> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> navItems = [
    {"icon": FontAwesomeIcons.house, "page": Home()},
    {"icon": FontAwesomeIcons.userGroup, "page": Friends()},
    {"icon": FontAwesomeIcons.facebookMessenger, "page": Messages()},
    {"icon": FontAwesomeIcons.bell, "page": Notifications()},
    {"icon": FontAwesomeIcons.tv, "page": Video()},
    {"icon": FontAwesomeIcons.store, "page": MarketPlace()},
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(navItems.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
              Navigateto(context, navItems[index]["page"]);
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  navItems[index]["icon"],
                  color: _currentIndex == index ? Colors.blue : Colors.grey,
                  size: 24.0,
                ),
                SizedBox(height: 4),
                _currentIndex == index
                    ? Container(width: 40, height: 2, color: Colors.blue)
                    : SizedBox(height: 0),
              ],
            ),
          );
        }),
      ),
    );
  }
}
