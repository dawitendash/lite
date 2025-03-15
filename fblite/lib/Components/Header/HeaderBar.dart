import 'package:fblite/Components/Header/HeaderRows/FirstRow.dart';
import 'package:fblite/Components/Header/HeaderRows/SecondRow.dart';
import 'package:flutter/material.dart';

class HeaderBar extends StatefulWidget {
  _headerBar createState() => _headerBar();
}

class _headerBar extends State<HeaderBar> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [FirstRow(), SizedBox(height: 15), SecondRow()]);
  }
}
