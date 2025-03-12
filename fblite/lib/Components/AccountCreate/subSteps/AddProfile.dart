import 'package:fblite/Components/AccountCreate/subSteps/ImportContacts.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class Addprofile extends StatefulWidget {
  _addProfileState createState() => _addProfileState();
}

class _addProfileState extends State<Addprofile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Facebook"),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImportContacts()),
                );
              },
              child: Text("Skip"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Boldtext(text: "Add a profile picture"),
            NormalText(
              "Help people find and recognize you by adding a profile picture ",
            ),
            Align(
              alignment: Alignment.center,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(
                  'assets/images/meta.png',
                  width: 150,
                  height: 150,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: Button(
          textValue: "Add profile",
          method: () {},
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
        ),
      ),
    );
  }
}
