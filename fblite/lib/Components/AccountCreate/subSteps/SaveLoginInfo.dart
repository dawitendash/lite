import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NavigateToAgree.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class SaveLoginInfo extends StatefulWidget {
  Map? data = {};
  SaveLoginInfo(this.data);
  @override
  _SaveLoginInfoState createState() => _SaveLoginInfoState();
}

class _SaveLoginInfoState extends State<SaveLoginInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext("Save your login info?"),
            SizedBox(height: 10),
            NormalText(
              "We'll save the login info for name ,so you won't need to enter it next time you log in. ",
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Save",
              method: () {
                print(widget.data);
                NavigateToAgree(context);
              },
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Not now",
              method: () {
                NavigateToAgree(context);
              },
              backgroundColor: Color.fromARGB(255, 220, 223, 224),
              foregroundColor: Colors.black87,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
