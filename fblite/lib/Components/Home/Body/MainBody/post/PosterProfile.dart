import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Views/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posterprofile extends StatefulWidget {
  String? follow = '';
  IconData? verifyicon;
  IconData? glopeicon;
  IconData? closeicon;
  String? sugesstedtext = '';

  Posterprofile({
    Key? key,
    this.closeicon,
    this.follow,
    this.glopeicon,
    this.verifyicon,
    this.sugesstedtext,
  }) : super(key: key);
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
                    Icon(widget.verifyicon, color: Colors.blue),
                    SizedBox(width: 5),
                    Text(widget.follow!, style: TextStyle(color: Colors.blue)),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      widget.sugesstedtext!,
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
                      widget.glopeicon,
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
            Icon(widget.closeicon, color: Color.fromARGB(255, 142, 143, 144)),
          ],
        ),
      ],
    );
  }
}
