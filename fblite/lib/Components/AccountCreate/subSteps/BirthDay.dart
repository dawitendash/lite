import 'package:fblite/Components/AccountCreate/subSteps/DiplaywhenWrongValueOccurs/SelectYourName.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class BirthDay extends StatefulWidget {
  Map data;
  BirthDay(this.data);
  _BirthdayState createState() => _BirthdayState();
}

class _BirthdayState extends State<BirthDay> {
  TextEditingController _birthDayController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: "what's your birthday?"),
            SizedBox(height: 20),
            NormalText(
              'Choose your date of birth, you can always make this private later.',
              16,
            ),
            NormalText('Why do i need to provide my my birthday? ', 16),
            SizedBox(height: 20),
            TextField(
              controller: _birthDayController,
              keyboardType: TextInputType.datetime,
              decoration: InputDecoration(
                hintText: '1-2-2025',
                labelText: '0 years old',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  // borderSide: BorderSide(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 20),
            Button(
              textValue: "Next",
              method: () {
                setState(
                  () => {widget.data['birthday'] = _birthDayController.text},
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SelectYourName(widget.data),
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
