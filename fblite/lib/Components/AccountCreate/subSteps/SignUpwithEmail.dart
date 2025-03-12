import 'package:fblite/Components/AccountCreate/subSteps/MobileNumber.dart';
import 'package:fblite/Controllers/signupWithEmailorMobile.dart';
import 'package:flutter/material.dart';

class SignUpwithEmail extends StatefulWidget {
  Map data = {};
  SignUpwithEmail(this.data);
  @override
  _SignUpwithEmailState createState() => _SignUpwithEmailState();
}

class _SignUpwithEmailState extends State<SignUpwithEmail> {
  @override
  Widget build(BuildContext context) {
    return signupWithEmailorMobile(
      // Fixed Naming
      headerText: "What's your email?",
      headerNotifyText:
          "Enter the email where you can be contacted. No one will see this on your profile.",
      inputLabelText: 'Email',
      inputKeyboardType: TextInputType.emailAddress,
      inputNotifyText:
          "You'll also receive WhatApp and SMS notifications from us . learn more",
      changeButton: "Sign up with Mobile number",
      method:
          () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => MobileNumber(widget.data),
              ),
            ),
          },
      data: widget.data,
    );
  }
}
