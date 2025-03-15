import 'package:fblite/Components/Modals/bottom_modal/three_dot_post.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Views/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Posterprofile extends StatefulWidget {
  String? follow;
  IconData? verifyicon;
  IconData? glopeicon;
  IconData? closeicon;
  String? sugesstedtext;

  Posterprofile({
    Key? key,
    this.closeicon,
    this.follow,
    this.glopeicon,
    this.verifyicon,
    this.sugesstedtext,
  }) : super(key: key);

  @override
  _posterProfileState createState() => _posterProfileState();
}

class _posterProfileState extends State<Posterprofile> {
  TextStyle _subTextStyle = TextStyle(
    color: Color.fromARGB(255, 142, 143, 144),
    fontSize: 12,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Row(
        children: [
          // Profile and name row
          GestureDetector(
            onTap: () {
              Navigateto(context, Profile());
            },
            child: Row(
              children: [
                Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Color(0xFFE4E6E8),
                      child: Icon(Icons.person),
                    ),
                    Positioned(
                      right: 0,
                      bottom: 0,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          color: Colors.green,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(width: 5),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Dawit Endashaw',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 5),
                        if (widget.verifyicon != null)
                          Icon(widget.verifyicon, color: Colors.blue),
                        SizedBox(width: 5),
                        Text(
                          widget.follow ?? '',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(widget.sugesstedtext ?? '', style: _subTextStyle),
                        Text("Feb 27 .", style: _subTextStyle),
                        if (widget.glopeicon != null)
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
          ),
          Spacer(),
          // Icons (dots and close)
          Row(
            children: [
              IconButton(
                onPressed: () {
                  DotsModal(context);
                },
                icon: Icon(
                  Icons.more_horiz,
                  color: Color.fromARGB(255, 142, 143, 144),
                ),
              ),
              Icon(
                widget.closeicon ?? Icons.close,
                color: Color.fromARGB(255, 142, 143, 144),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
