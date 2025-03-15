import 'package:fblite/Components/Header/HeaderRows/SecondRow.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';

class Messages extends StatefulWidget {
  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: SecondRow(),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: BottomBorderline(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to left
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Boldtext(text: 'Messages'),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    BuildIconButton(icon: Icons.settings),
                    SizedBox(width: 8),
                    Search(),
                  ],
                ),
              ],
            ),
            SizedBox(height: 80), // Reduced spacing
            Center(
              child: Column(
                children: [
                  Icon(Icons.telegram, color: Color(0xFFE4E6E8), size: 60),
                  SizedBox(height: 10),
                  NormalText('No messages yet', 16),
                  SizedBox(height: 5),
                  NormalText('Tap + to start a conversation', 16),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle new message action
        },
        backgroundColor: Colors.blue,
        child: Icon(Icons.add, color: Colors.white, size: 28),
      ),
    );
  }
}
