import 'package:fblite/Components/AccountCreate/subSteps/AccountExist.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class AgreeWithFacebook extends StatefulWidget {
  _AgreeWithFacebookState createState() => _AgreeWithFacebookState();
}

class _AgreeWithFacebookState extends State<AgreeWithFacebook> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext("Agree to Facebook's terms and policies"),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: NormalText(
                "People who use our service may have uploading your contact information to Facebook. learn more ",
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: NormalText(
                "By tapping I agree, you agree to create an account and to Facebook's Terms,Privacy Policy and Cookies Policy. ",
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(right: 5),
              child: NormalText(
                " The Privacy Policy dexcribes the ways we can use the information we collect when you create an account.For example, we use this information to provide,personalize and improve our products,including ads.  ",
              ),
            ),
            SizedBox(height: 20),
            Button(
              textValue: "I agree",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountExist()),
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
