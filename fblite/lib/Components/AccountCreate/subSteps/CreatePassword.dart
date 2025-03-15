import 'package:fblite/Components/AccountCreate/subSteps/SaveLoginInfo.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class CreatePassword extends StatefulWidget {
  Map? data = {};
  CreatePassword(this.data);
  @override
  _CreatePasswordState createState() => _CreatePasswordState();
}

class _CreatePasswordState extends State<CreatePassword> {
  TextEditingController _passwordValue = TextEditingController();
  bool _obscuteText = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: 'Create a password'),
            SizedBox(height: 10),
            NormalText(
              "Create a password with at least 6 characters or numbers. It should be something others can't guess",
              16,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _passwordValue,
              obscureText: _obscuteText,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  // borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    _obscuteText ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      _obscuteText = !_obscuteText;
                    });
                  },
                ),
              ),
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Next",
              method: () {
                setState(() {
                  widget.data!['password'] = _passwordValue.text;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SaveLoginInfo(widget.data),
                  ),
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
