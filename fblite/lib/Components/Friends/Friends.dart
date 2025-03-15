import 'package:fblite/Components/Header/HeaderRows/SecondRow.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class Friends extends StatefulWidget {
  const Friends({super.key});

  @override
  State<Friends> createState() => _FriendsState();
}

class _FriendsState extends State<Friends> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        titleSpacing: 0, // Removes extra padding
        title: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10.0),
          child: SecondRow(),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: BottomBorderline(),
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 10.0,
          vertical: 15.0,
        ), // Better spacing
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to left
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Expanded(child: Boldtext(text: 'Friends')), Search()],
            ),
            SizedBox(height: 15),
            Row(
              children: [
                Buillinkscotainer(textValue: 'Friend requests'),
                SizedBox(width: 5),
                Buillinkscotainer(textValue: "Your friends"),
              ],
            ),
            SizedBox(height: 80), // Reduced excessive spacing
            Center(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/friends.png",
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(height: 8),
                  Icon(Icons.telegram, color: Colors.grey, size: 40),
                  SizedBox(height: 8),
                  Text(
                    'No Suggestions',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  SizedBox(height: 5),
                  NormalText('Try searching for a friend', 16),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        padding: EdgeInsets.symmetric(
                          horizontal: 20,
                          vertical: 10,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        'Search for a friend',
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
