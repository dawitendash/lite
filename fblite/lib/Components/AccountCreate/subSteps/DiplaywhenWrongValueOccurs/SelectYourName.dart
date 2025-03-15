import 'package:fblite/Components/AccountCreate/subSteps/FirstAndLAstName.dart';
import 'package:fblite/Components/AccountCreate/subSteps/GenderSelection.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BottomNavigation.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class SelectYourName extends StatefulWidget {
  Map data;
  SelectYourName(this.data);
  @override
  _SelectYourNameState createState() => _SelectYourNameState();
}

class _SelectYourNameState extends State<SelectYourName> {
  @override
  void initState() {
    print(widget.data);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String selectedValue = '';
    return Scaffold(
      appBar: AppBar(title: Text('')),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: "Select your name"),
            SizedBox(height: 20),
            NormalText(
              'You typed first last name .We require everyone to use the name they use in evertday life ,what thier friends call them, on facebook,Did you mean:',
              16,
            ),
            SizedBox(height: 20),
            Radio(
              value: "${widget.data['firstName']} ${widget.data['lasName']}",
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            SizedBox(height: 10),
            Radio(
              value: "${widget.data['lasName']} ${widget.data['firstName']}",
              groupValue: selectedValue,
              onChanged: (value) {
                setState(() {
                  selectedValue = value!;
                });
              },
            ),
            SizedBox(height: 20),
            Button(
              textValue: "Next",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => GenderSelection(widget.data),
                  ),
                );
              },
              foregroundColor: Colors.white,
              backgroundColor: Colors.blueAccent,
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Use different name",
              method: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FirstAndLAstName()),
                );
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
