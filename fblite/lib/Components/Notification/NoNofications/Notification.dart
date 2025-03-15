import 'package:fblite/Components/Header/HeaderRows/SecondRow.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationState createState() => _NotificationState();
}

class _NotificationState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SecondRow(),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: BottomBorderline(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Boldtext(text: "Notifications"),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BuildIconButton(icon: Icons.check),
                    SizedBox(width: 8),
                    Search(),
                  ],
                ),
              ],
            ),
            SizedBox(height: 15),

            /// Notification Item
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Icon(Icons.facebook, size: 40, color: Colors.blue),
                    Positioned(
                      top: 0,
                      right: -2,
                      child: FaIcon(
                        FontAwesomeIcons.bell,
                        size: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Welcome to Facebook! Tap here to find people you know and add them as a friend.',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(height: 4),
                      NormalText('Mar 7 at 8:33 PM', 16),
                    ],
                  ),
                ),
                SizedBox(width: 8),
                Icon(Icons.more_horiz, color: Colors.grey[700]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
