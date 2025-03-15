import 'package:fblite/Components/AccountCreate/subSteps/AddProfile.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class NoCreateAccount extends StatefulWidget {
  const NoCreateAccount({Key? key}) : super(key: key);

  @override
  _NoCreateAccountState createState() => _NoCreateAccountState();
}

class _NoCreateAccountState extends State<NoCreateAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Facebook"), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NormalText(
              "Let us know this email address belongs to you. Enter the code sent to dawitEndashaw74@gmail.com.",
              16,
            ),
            const SizedBox(height: 10),
            Boldtext(text: "Enter the 5-digit code from your email."),
            const SizedBox(height: 10),

            // Centered TextField with medium width
            Align(
              alignment: Alignment.center,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                child: TextField(
                  keyboardType: TextInputType.number,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 15,
                      vertical: 10,
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),
            Button(
              textValue: "Ok",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Addprofile()),
                );
              },
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            ),
            const SizedBox(height: 10),
            NormalText("You should receive your email in 3 minutes.", 16),
            const SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                // Add functionality to resend email
              },
              child: const Text(
                "Send Email Again",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Add functionality to change email
              },
              child: const Text(
                "Change email address",
                style: TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 5),
            GestureDetector(
              onTap: () {
                // Add functionality to confirm via phone number
              },
              child: const Text(
                "Confirm by phone number",
                style: TextStyle(color: Colors.blue),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
