import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:fblite/Views/Home.dart';
import 'package:flutter/material.dart';

class ImportContacts extends StatefulWidget {
  @override
  _ImportContactState createState() => _ImportContactState();
}

class _ImportContactState extends State<ImportContacts> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [Text("Skip")],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext("Facebook is better with friends"),
            NormalText(
              "See who's on Facebook by continuously uploading your contacts. Then let us know who you want to add as friends.",
            ),
            SizedBox(height: 20),
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  'assets/images/better.png',
                  width: double.infinity,
                  height: 150,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              NormalText(
                "Info about contacts in your address book, including names, phone numbers, and nicknames, will be sent to Facebook so we can suggest friends for you and others, and offer a better service. You can turn this off in settings and manage or delete contact information you share with Facebook. Learn more.",
              ),
              SizedBox(height: 10),
              Button(
                textValue: "Turn on",
                method: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Home()),
                  );
                },
                foregroundColor: Colors.white,
                backgroundColor: Colors.blue,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
