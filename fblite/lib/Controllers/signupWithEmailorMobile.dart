import 'package:fblite/Components/AccountCreate/subSteps/CreatePassword.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:flutter/material.dart';

class signupWithEmailorMobile extends StatefulWidget {
  final String headerText;
  final String headerNotifyText;
  final String inputLabelText;
  final TextInputType inputKeyboardType;
  final String inputNotifyText;
  final String changeButton;
  final VoidCallback? method;
  Map? data;
  signupWithEmailorMobile({
    Key? key,
    required this.headerText,
    required this.headerNotifyText,
    required this.inputLabelText,
    required this.inputKeyboardType,
    required this.inputNotifyText,
    required this.changeButton,
    this.method,
    this.data,
  }) : super(key: key);
  @override
  _signupWithEmailorMobileState createState() =>
      _signupWithEmailorMobileState();
}

class _signupWithEmailorMobileState extends State<signupWithEmailorMobile> {
  TextEditingController _inputValue = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.headerText,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text(widget.headerNotifyText),
            SizedBox(height: 20),
            TextField(
              controller: _inputValue,
              keyboardType: widget.inputKeyboardType,
              decoration: InputDecoration(
                labelText: widget.inputLabelText,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  // borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 10),
            Text(widget.inputNotifyText),
            SizedBox(height: 10),
            Button(
              textValue: "Next",
              method: () {
                setState(() {
                  if (widget.inputLabelText != 'Email') {
                    widget.data!['mobile_number'] = _inputValue.text;
                  } else {
                    widget.data!['email'] = _inputValue.text;
                  }
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CreatePassword(widget.data),
                  ),
                );
              },
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
            ),
            SizedBox(height: 10),
            Button(
              textValue: widget.changeButton,
              method: () {
                widget.method!();
              },
              foregroundColor: Colors.black,
              backgroundColor: Color.fromARGB(255, 220, 223, 224),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}
