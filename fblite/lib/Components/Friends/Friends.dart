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
        title: SecondRow(),
        bottom: BottomBorderline(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Boldtext('Friends'), Search()],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Buillinkscotainer(textValue: 'Friend requests'),
                SizedBox(width: 5),
                Buillinkscotainer(textValue: "your friends"),
              ],
            ),
            SizedBox(height: 200),
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
                  SizedBox(height: 5),
                  Icon(
                    Icons.telegram,
                    color: const Color.fromARGB(255, 210, 205, 205),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'No Suggestion',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  NormalText('Try searching for a friend'),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    child: Text(
                      'Search for a friend',
                      style: TextStyle(color: Colors.white),
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
