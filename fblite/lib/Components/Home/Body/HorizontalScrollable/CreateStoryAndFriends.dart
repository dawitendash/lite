import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class Createstoryandfriends extends StatefulWidget {
  _createStoryAndFriendState createState() => _createStoryAndFriendState();
}

class _createStoryAndFriendState extends State<Createstoryandfriends> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 200,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(width: 1.0, color: Colors.grey),
                  ),
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(color: Color(0xFFE4E6E8)),
                      ),
                      Container(
                        alignment: Alignment.bottomCenter,
                        height: 90,
                        decoration: BoxDecoration(color: Colors.white),
                        child: Text(
                          "Create story",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.add, color: Colors.white),
                ),
              ],
            ),
            SizedBox(width: 10),
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Container(
                  width: 130,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/find_frind.png',
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Text(
                  "Find friend",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ],
        ),

        SizedBox(height: 10),
        BottomBorderline(height: 3.0),
      ],
    );
  }
}
