import 'package:fblite/Components/AccountCreate/ChooseAccount.dart';
import 'package:fblite/Components/app_bar/app_bar.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class Forgetpassword extends StatefulWidget {
  @override
  _ForgetpasswordState createState() => _ForgetpasswordState();
}

class _ForgetpasswordState extends State<Forgetpassword> {
  bool _IsFindByEamil = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomAppBar(app_bar_text: "")),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: 'Find your account'),
            SizedBox(height: 10),
            NormalText(
              _IsFindByEamil
                  ? 'Enter your email address.'
                  : 'Enter your mobile number.',
            ),
            SizedBox(height: 20),
            TextField(
              keyboardType:
                  _IsFindByEamil
                      ? TextInputType.emailAddress
                      : TextInputType.phone,
              decoration: InputDecoration(
                labelText: _IsFindByEamil ? 'Email' : 'Mobile Number',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 10),
            if (!_IsFindByEamil)
              Text(
                'You may receive WhatsApp and SMS notifications from us for security and login purposes.',
                style: TextStyle(fontSize: 12, color: Colors.grey[600]),
              ),
            SizedBox(height: 20),
            Button(
              textValue: "Continue",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChooseAccount()),
                );
              },
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
            SizedBox(height: 20),
            Center(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _IsFindByEamil = !_IsFindByEamil;
                  });
                },
                child: Text(
                  _IsFindByEamil
                      ? 'Search by mobile number instead'
                      : 'Search by email instead',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
