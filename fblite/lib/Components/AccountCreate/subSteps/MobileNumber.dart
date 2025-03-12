import 'package:fblite/Components/AccountCreate/subSteps/SignUpwithEmail.dart';
import 'package:fblite/Controllers/signupWithEmailorMobile.dart';
import 'package:flutter/material.dart';

class MobileNumber extends StatefulWidget {
  Map data = {};
  MobileNumber(this.data);
  @override
  _MobileNumberState createState() => _MobileNumberState();
}

class _MobileNumberState extends State<MobileNumber> {
  String phoneNumber = '';

  @override
  Widget build(BuildContext context) {
    return signupWithEmailorMobile(
      headerText: "What's your mobile number?",
      headerNotifyText:
          "Enter the mobile number where you can be contacted. No one will see this on your profile.",
      inputLabelText: 'Mobile Number',
      inputKeyboardType: TextInputType.phone,
      inputNotifyText:
          "You may receive WhatsApp and SMS notifications from us. Learn more",
      changeButton: "Sign up with email",
      method:
          () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SignUpwithEmail(widget.data),
              ),
            ),
          },
      data: widget.data,
    );
  }
}
