import 'package:fblite/Components/Header/HeaderRows/SecondRow.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notifications extends StatefulWidget {
  _notificationState createState() => _notificationState();
}

class _notificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SecondRow(),
        bottom: BottomBorderline(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Boldtext("Notifications"),
                Row(
                  children: [
                    BuildIconButton(icon: Icons.check),
                    SizedBox(width: 5),
                    Search(),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Icon(Icons.facebook, size: 40, color: Colors.blue),
                    FaIcon(
                      FontAwesomeIcons.bell,
                      size: 10,
                      color: Colors.black,
                    ),
                  ],
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      NormalText(
                        'Welcome to Facebook! Tap here to find people you know and add them as a friend.',
                      ),
                      NormalText('Mar 7 at 8:33Pm.'),
                    ],
                  ),
                ),
                Icon(Icons.more_horiz),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
