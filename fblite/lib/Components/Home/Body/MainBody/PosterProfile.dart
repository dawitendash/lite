import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posterprofile extends StatefulWidget {
  _posterProfileState createState() => _posterProfileState();
}

class _posterProfileState extends State<Posterprofile> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundColor: Color(0xFFE4E6E8),
              child: Icon(Icons.person),
            ),
            SizedBox(width: 5),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'Dawit Endashaw',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Icon(Icons.verified, color: Colors.blue),
                    SizedBox(width: 5),
                    Text("follow", style: TextStyle(color: Colors.blue)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Suggested for you .",
                      style: TextStyle(
                        color: Color.fromARGB(255, 142, 143, 144),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      "Feb 27 .",
                      style: TextStyle(
                        color: Color.fromARGB(255, 142, 143, 144),
                        fontSize: 12,
                      ),
                    ),
                    FaIcon(
                      FontAwesomeIcons.globe,
                      color: Color.fromARGB(255, 142, 143, 144),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.more_horiz, color: Color.fromARGB(255, 142, 143, 144)),
            Icon(Icons.close, color: Color.fromARGB(255, 142, 143, 144)),
          ],
        ),
      ],
    );
  }
}
