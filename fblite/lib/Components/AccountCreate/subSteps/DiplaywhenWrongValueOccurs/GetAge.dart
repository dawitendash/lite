import 'package:fblite/Components/AccountCreate/subSteps/BirthDay.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:flutter/material.dart';

class GetAge extends StatefulWidget {
  @override
  _GetAgeState createState() => _GetAgeState();
}

class _GetAgeState extends State<GetAge> {
  Map data = {};
  TextEditingController _ageController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: Scaffold(
        appBar: AppBar(title: Text('')),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Boldtext(
                text: 'How old are you?',
              ), //reusable text because they are the same style bro
              SizedBox(height: 10),
              TextField(
                controller: _ageController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  labelText: 'Age',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    // borderSide: BorderSide(color: Colors.grey),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Button(
                textValue: "Next",
                method: () {},
                foregroundColor: Colors.white,
                backgroundColor: Colors.blueAccent,
              ),
              Button(
                textValue: "Use date of birth",
                method: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BirthDay(data)),
                  );
                },
                foregroundColor: Colors.black87,
                backgroundColor: Color.fromARGB(255, 220, 223, 224),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigation(),
      ),
    );
  }
}
