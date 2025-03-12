import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class UpgradeProfile extends StatelessWidget {
  const UpgradeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Boldtext(text: "Add more to your profile"),
              Icon(Icons.close),
            ],
          ),
          NormalText(
            "Continue setting up your profile to get a better experiance on Facebook",
          ),
          SizedBox(height: 10),
          Text(
            "Next: update your profile picture",
            style: TextStyle(color: Colors.blue),
          ),
          SizedBox(height: 10),
          Button(
            textValue: "Continue",
            method: () {},
            backgroundColor: const Color.fromARGB(255, 185, 214, 238),
            foregroundColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
