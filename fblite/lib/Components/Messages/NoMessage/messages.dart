import 'package:fblite/Components/Header/HeaderRows/SecondRow.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  _messages createState() => _messages();
}

class _messages extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SecondRow(),
        bottom: BottomBorderline(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Boldtext('Messages'),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BuildIconButton(icon: Icons.settings),
                    SizedBox(width: 5),
                    Search(),
                  ],
                ),
              ],
            ),
            SizedBox(height: 200),
            Center(
              child: Column(
                children: [
                  Icon(Icons.telegram, color: Color(0xFFE4E6E8)),
                  SizedBox(height: 5),
                  NormalText('No meessages yet'),
                  SizedBox(height: 5),
                  NormalText('Tap + to start a conversation'),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white),
      ),
    );
  }
}
