import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:fblite/Views/Menu.dart';
import 'package:fblite/Views/Search_screen.dart';
import 'package:flutter/material.dart';

class FirstRow extends StatefulWidget {
  _firstRowState createState() => _firstRowState();
}

class _firstRowState extends State<FirstRow> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('assets/images/fk.png', width: 80, height: 70),
        Row(
          children: [
            BuildIconButton(icon: Icons.add),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigateto(context, SearchScreen());
              },
              child: BuildIconButton(icon: Icons.search),
            ),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigateto(context, Menus_screen());
              },
              child: BuildIconButton(icon: Icons.menu),
            ),
          ],
        ),
      ],
    );
  }
}
