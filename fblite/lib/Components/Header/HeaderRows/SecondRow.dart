import 'package:fblite/Components/Friends/Friends.dart';
import 'package:fblite/Components/MarketPlace/MarketPlace.dart';
import 'package:fblite/Components/Messages/NoMessage/messages.dart';
import 'package:fblite/Components/Notification/NoNofications/Notification.dart';
import 'package:fblite/Controllers/BuildContainerForNotifivation.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Views/Home.dart';
import 'package:fblite/Views/Video.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SecondRow extends StatefulWidget {
  _secondRowState createState() => _secondRowState();
}

class _secondRowState extends State<SecondRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () {
            Navigateto(context, Home());
          },
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              FaIcon(FontAwesomeIcons.house, color: Colors.blue),
              Buildcontainerfornotifivation(textValue: "15+"),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigateto(context, Friends());
          },
          child: FaIcon(
            FontAwesomeIcons.userGroup,
            color: Color.fromARGB(255, 144, 142, 142),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigateto(context, Messages());
          },
          child: FaIcon(
            FontAwesomeIcons.facebookMessenger,
            color: Color.fromARGB(255, 144, 142, 142),
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigateto(context, Notifications());
          },
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              FaIcon(
                FontAwesomeIcons.bell,
                color: Color.fromARGB(255, 144, 142, 142),
              ),
              Buildcontainerfornotifivation(textValue: '99+'),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigateto(context, Video());
          },
          child: Stack(
            alignment: Alignment.center,
            children: [
              FaIcon(
                FontAwesomeIcons.tv,
                color: Color.fromARGB(255, 144, 142, 142),
              ),
              FaIcon(FontAwesomeIcons.play, size: 8),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            Navigateto(context, MarketPlace());
          },
          child: FaIcon(
            FontAwesomeIcons.store,
            color: Color.fromARGB(255, 144, 142, 142),
          ),
        ),
      ],
    );
  }
}
