import 'package:fblite/Components/AccountCreate/subSteps/LoginStuff.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class ChooseAccount extends StatefulWidget {
  _chooseAccountState createState() => _chooseAccountState();
}

class _chooseAccountState extends State<ChooseAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: 'Choose your account'),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => LoginStuff()),
                );
              },
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      'assets/images/meta.png',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  Column(
                    children: [
                      Text(
                        'Dawit Endashaw',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      NormalText('dawitendashaw74@gmail.com', 16),
                    ],
                  ),
                  Text('>'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
