import 'package:fblite/Components/AccountCreate/subSteps/NoCreateAccount.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:fblite/Views/ForgetPassword.dart';
import 'package:flutter/material.dart';

class UseDifferentAccount extends StatefulWidget {
  Map data = {};
  _useDifferentAccountState createState() => _useDifferentAccountState();
}

class _useDifferentAccountState extends State<UseDifferentAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: "Find another account?"),
            SizedBox(height: 10),
            NormalText(
              "If you have an account we can help you find it and log in.if you don't ,you can create a new account.",
              16,
            ),
            SizedBox(height: 20),
            Button(
              textValue: "Yes,find my account",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Forgetpassword()),
                );
              },
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            ),
            SizedBox(height: 10),
            Button(
              textValue: "No,create new account",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NoCreateAccount()),
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
