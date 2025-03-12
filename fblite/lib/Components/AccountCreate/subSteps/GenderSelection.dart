import 'package:fblite/Components/AccountCreate/subSteps/MobileNumber.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class GenderSelection extends StatefulWidget {
  Map data = {};
  GenderSelection(this.data);
  @override
  _GenderSelectionState createState() => _GenderSelectionState();
}

class _GenderSelectionState extends State<GenderSelection> {
  List gender = ['Female', 'Male', 'More Options'];
  String SelectedValue = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: 'What is your gender?'),
            SizedBox(height: 10),
            NormalText(
              'You can change who sees your gender on your profile later.',
            ),
            SizedBox(height: 10),
            Column(
              children:
                  gender.map((option) {
                    return Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(option, style: TextStyle(fontSize: 18)),
                          ),
                          Radio<String>(
                            value: option,
                            groupValue: SelectedValue,
                            onChanged: (value) {
                              setState(() {
                                SelectedValue = value!;
                              });
                            },
                          ),
                        ],
                      ),
                    );
                  }).toList(),
            ),
            Container(
              margin: EdgeInsets.only(left: 5, right: 10),
              child: NormalText(
                "Select More options to choose another gender or if you'd rather not say",
              ),
            ),
            SizedBox(height: 20),
            Button(
              textValue: "Next",
              method: () {
                setState(() {
                  widget.data['gender'] = SelectedValue;
                });
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MobileNumber(widget.data),
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
