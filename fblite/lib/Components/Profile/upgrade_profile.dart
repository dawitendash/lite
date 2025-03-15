import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class UpgradeProfile extends StatelessWidget {
  const UpgradeProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 10,
      ), // Added symmetric padding for consistency
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Boldtext(text: "Add more to your profile"),
              IconButton(
                icon: Icon(Icons.close, color: Colors.black),
                onPressed: () {}, // Close action goes here
              ),
            ],
          ),
          NormalText(
            "Continue setting up your profile to get a better experience on Facebook.",
            16,
          ),
          SizedBox(height: 10),
          Text(
            "Next: update your profile picture",
            style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Button(
            textValue: "Continue",
            method: () {}, // Continue action goes here
            backgroundColor: const Color.fromARGB(255, 185, 214, 238),
            foregroundColor:
                Colors.blue, // Rounded button edges for a modern look
          ),
        ],
      ),
    );
  }
}
