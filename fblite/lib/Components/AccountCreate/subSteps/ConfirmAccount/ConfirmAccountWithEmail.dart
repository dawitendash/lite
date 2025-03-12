import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class ConfirmAccountWithEmail extends StatefulWidget {
  _confirmTheAccountState createState() => _confirmTheAccountState();
}

class _confirmTheAccountState extends State<ConfirmAccountWithEmail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: "Confirm your account"),
            NormalText(
              "We sent a code to your email. Enter that code to confirm your account.",
            ),
            SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/confirm.jpg',
                width: double.infinity,
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Enter code',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  // borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Continue",
              method: () {},
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                //send it again logic here
              },
              child: Center(child: Text("Send code again")),
            ),
          ],
        ),
      ),
    );
  }
}
