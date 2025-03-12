import 'package:fblite/Components/AccountCreate/subSteps/LoginStuff.dart';
import 'package:fblite/Components/AccountCreate/subSteps/UseDifferentAccount.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class AccountExist extends StatefulWidget {
  _accountExitState createState() => _accountExitState();
}

class _accountExitState extends State<AccountExist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 10),
              child: Boldtext(
                text: 'You might already have a Facebook account',
              ),
            ),
            SizedBox(height: 10),
            NormalText(
              'if this is you, we can help you log in. if not,you can find another account.',
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                Navigator.push(
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
                      NormalText('dawitendashaw74@gmail.com'),
                    ],
                  ),
                  Text('>'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Button(
              textValue: "Choose different account",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => UseDifferentAccount(),
                  ),
                );
              },
              backgroundColor: Color.fromARGB(255, 220, 223, 224),
              foregroundColor: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }
}
