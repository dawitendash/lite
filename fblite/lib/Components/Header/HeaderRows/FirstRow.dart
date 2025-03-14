import 'package:fblite/Components/Modals/alert_modal/alert.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:fblite/Views/Menu.dart';
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
            BuildIconButton(
              icon: Icons.add,
              method: () {
                AlertModal(
                  context,
                  "Allow Facebook Lite to use your phone's storage?",
                  "This lets you share from your camera roll, and enables other features for photos and videos",
                );
              },
            ),
            SizedBox(width: 10),
            Search(),
            SizedBox(width: 10),
            GestureDetector(
              onTap: () {
                Navigateto(context, Menus_screen());
              },
              child: BuildIconButton(
                icon: Icons.menu,
                method: () {
                  Navigateto(context, Menus_screen());
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
