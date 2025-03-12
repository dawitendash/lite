import 'package:fblite/Components/Menus/Menu_items.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Bodylinks extends StatelessWidget {
  const Bodylinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            MenuItems(
              icons: Icons.movie,
              textValue: "Reels",
              color: Colors.amber[800],
            ),
            SizedBox(width: 10),
            MenuItems(
              icons: FontAwesomeIcons.facebookMessenger,
              textValue: "Messages",
              color: const Color.fromARGB(255, 166, 33, 243),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            MenuItems(
              icons: Icons.groups,
              textValue: "Groups",
              color: Colors.blue[500],
            ),
            SizedBox(width: 10),
            MenuItems(
              icons: Icons.tv,
              textValue: "Video",
              color: const Color.fromARGB(255, 79, 159, 224),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            MenuItems(
              icons: Icons.live_tv,
              textValue: "Live",
              color: const Color.fromARGB(255, 243, 44, 33),
            ),
            SizedBox(width: 10),
            MenuItems(
              icons: Icons.store,
              textValue: "Marketplace",
              color: const Color.fromARGB(255, 126, 186, 235),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            MenuItems(
              icons: FontAwesomeIcons.bookmark,
              textValue: "Saved",
              color: const Color.fromARGB(255, 226, 33, 243),
            ),
            SizedBox(width: 10),
            MenuItems(
              icons: Icons.av_timer_outlined,
              textValue: "Memories",
              color: const Color.fromARGB(255, 126, 186, 235),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            MenuItems(
              icons: Icons.event,
              textValue: "Events",
              color: const Color.fromARGB(255, 243, 44, 33),
            ),
            SizedBox(width: 10),
            MenuItems(
              icons: Icons.verified,
              textValue: "Meta Verified",
              color: const Color.fromARGB(255, 126, 186, 235),
            ),
          ],
        ),
        SizedBox(height: 10),
        Row(
          children: [
            MenuItems(
              icons: Icons.cell_tower_outlined,
              textValue: "Ethio Telecom Data setting",
              color: const Color.fromARGB(255, 82, 33, 243),
            ),
            SizedBox(width: 10),
            MenuItems(
              icons: Icons.feed,
              textValue: "Feeds",
              color: const Color.fromARGB(255, 235, 191, 126),
            ),
          ],
        ),
        SizedBox(height: 5),
        Row(
          children: [
            MenuItems(
              icons: FontAwesomeIcons.instagram,
              textValue: "Instagram Lite",
              color: const Color.fromARGB(255, 255, 51, 0),
            ),
          ],
        ),
      ],
    );
  }
}
