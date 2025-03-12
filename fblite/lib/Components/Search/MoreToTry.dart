import 'package:fblite/Components/Search/SearchButton.dart';
import 'package:flutter/material.dart';

class Moretotry extends StatefulWidget {
  const Moretotry({super.key});

  @override
  State<Moretotry> createState() => _MoretotryState();
}

class _MoretotryState extends State<Moretotry> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text('More to try on Facebook'),
        SizedBox(height: 10),
        Row(
          children: [
            Expanded(
              child: Moretotrybuttons(
                icons: Icons.movie,
                textValue: "Reels",
                colorValue: Colors.amber[800],
              ),
            ),
            Expanded(
              child: Moretotrybuttons(
                icons: Icons.store,
                textValue: "Marketplace",
                colorValue: Color.fromARGB(255, 0, 208, 255),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Moretotrybuttons(
                icons: Icons.group,
                textValue: "Friends",
                colorValue: Color.fromARGB(255, 0, 60, 255),
              ),
            ),
            Expanded(
              child: Moretotrybuttons(
                icons: Icons.groups,
                textValue: "Groups",
                colorValue: Color.fromARGB(255, 0, 208, 255),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Moretotrybuttons(
                icons: Icons.av_timer_sharp,
                textValue: "Memories",
                colorValue: Colors.amber[800],
              ),
            ),
            Expanded(
              child: Moretotrybuttons(
                icons: Icons.bookmark,
                textValue: "Saved",
                colorValue: Color.fromARGB(255, 115, 52, 151),
              ),
            ),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: Moretotrybuttons(
                icons: Icons.event,
                textValue: "Events",
                colorValue: Color.fromARGB(255, 255, 77, 0),
              ),
            ),
            Expanded(
              child: Moretotrybuttons(
                icons: Icons.calendar_view_month_outlined,
                textValue: "Birthdays",
                colorValue: Color.fromARGB(255, 0, 255, 42),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
