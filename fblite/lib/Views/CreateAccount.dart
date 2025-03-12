import 'package:fblite/Components/AccountCreate/subSteps/FirstAndLAstName.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Views/ForgetPassword.dart';
import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  @override
  _createAccountState createState() => _createAccountState();
}

class _createAccountState extends State<CreateAccount> {
  String _account_logo = 'assets/images/account_logo.jpg';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext('Join to Facebook'),
            SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                _account_logo,
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 20),
            Container(
              margin: EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 5),
              child: Text(
                'Create an account to connect to friends, family, and communities of people who share your interests.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            SizedBox(height: 30),
            Button(
              textValue: "Create new account",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstAndLAstName()),
                );
              },
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
            SizedBox(height: 20),
            Button(
              textValue: "Find my account",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Forgetpassword()),
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
