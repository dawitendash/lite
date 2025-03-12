import 'package:fblite/Components/AccountCreate/subSteps/ConfirmAccount/ConfirmAccountWithEmail.dart';
import 'package:fblite/Components/AccountCreate/subSteps/ConfirmAccount/ConfirmAccountWithPassword.dart';
import 'package:fblite/Components/AccountCreate/subSteps/DiplaywhenWrongValueOccurs/TryAnotherDevice.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:flutter/material.dart';

class LoginStuff extends StatefulWidget {
  _LoginStuffState createState() => _LoginStuffState();
}

class _LoginStuffState extends State<LoginStuff> {
  String _LoginStyle = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.asset(
                      "assets/images/meta_logo.png",
                      width: 50,
                      height: 50,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Dawit Endashaw',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text('Choose a way to log in.'),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _LoginStyle = 'Email';
                          });
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Get code or link via email',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text('dawitendashaw74@gmail.com'),
                          ],
                        ),
                      ),
                      Radio(
                        value: 'Email',
                        groupValue: _LoginStyle,
                        onChanged: (value) {
                          setState(() {
                            _LoginStyle = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            _LoginStyle = 'Password';
                          });
                        },
                        child: Text(
                          'Enter password to log in ',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Radio(
                        value: 'Password',
                        groupValue: _LoginStyle,
                        onChanged: (value) {
                          setState(() {
                            _LoginStyle = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TryAnotherDevice(),
                        ),
                      );
                    },
                    child: Text(
                      'No longer have access to these?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color.fromARGB(255, 123, 193, 251),
                      ),
                    ),
                  ),
                  Spacer(),
                  Button(
                    textValue: "Continue",
                    method: () {
                      if (_LoginStyle == 'Email') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ConfirmAccountWithEmail(),
                          ),
                        );
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Confirmaccountwithpassword(),
                          ),
                        );
                      }
                    },
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
