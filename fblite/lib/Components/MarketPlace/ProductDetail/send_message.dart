import 'package:fblite/Components/MarketPlace/Input.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SendMessage extends StatelessWidget {
  const SendMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      alignment: Alignment.center,
      width: double.maxFinite,
      height: 180,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: const Color.fromARGB(255, 43, 40, 40)),
      ),
      child: Column(
        children: [
          Row(
            children: [
              FaIcon(FontAwesomeIcons.facebookMessenger, color: Colors.blue),
              SizedBox(width: 5),
              Boldtext(text: "Send seller a message", textSize: 16),
            ],
          ),
          SizedBox(height: 10),
          Input(textvalue: "is still avaliable?", maxline: 1),
          SizedBox(height: 10),
          Button(
            textValue: "Send",
            method: () {},
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
