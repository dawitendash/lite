import 'package:fblite/Components/AccountCreate/subSteps/BirthDay.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class FirstAndLAstName extends StatefulWidget {
  _FirsAndLastName createState() => _FirsAndLastName();
}

class _FirsAndLastName extends State<FirstAndLAstName> {
  Map data = {};
  TextEditingController _FirstNameController = new TextEditingController();
  TextEditingController _LastNameController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 20, left: 20, right: 20, bottom: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: "what's your name?"),
            SizedBox(height: 20),
            NormalText('Enter the name you use in real life', 16),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _FirstNameController,
                    decoration: InputDecoration(
                      labelText: 'First Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: TextField(
                    controller: _LastNameController,
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Button(
              textValue: "Next",
              method: () {
                setState(() {
                  data['firstName'] = _FirstNameController.text;
                  data['lasName'] = _LastNameController.text;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BirthDay(data)),
                );
              },
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
