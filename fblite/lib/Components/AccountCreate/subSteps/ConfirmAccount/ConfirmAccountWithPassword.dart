import 'package:fblite/Components/AccountCreate/subSteps/LoginStuff.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class Confirmaccountwithpassword extends StatefulWidget {
  _confirmTheAccountState createState() => _confirmTheAccountState();
}

class _confirmTheAccountState extends State<Confirmaccountwithpassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image.asset(
                    'assets/images/meta.png',
                    width: 50,
                    height: 50,
                  ),
                ),
                NormalText("Dawit Endashaw", 16),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  // borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Log in",
              method: () {},
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Try another way",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginStuff()),
                );
              },
              foregroundColor: Colors.black,
              backgroundColor: Color.fromARGB(255, 220, 223, 224),
            ),
          ],
        ),
      ),
    );
  }
}
