import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

void CopyModal(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.sizeOf(context).height * 0.4,
        width: double.maxFinite,
        child: Column(
          children: [
            Center(
              child: Column(
                children: [
                  Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundColor: Color(0xFFE4E6E8),
                        child: Icon(Icons.person),
                      ),
                      Icon(
                        Icons.facebook_outlined,
                        color: Colors.blue,
                        size: 12,
                      ),
                    ],
                  ),
                  Boldtext(text: "An easier way to share", textSize: 18),
                  SizedBox(height: 10),
                  NormalText(
                    "See something you want to share? We've made it easier than ever to share with friends. ",
                  ),
                  SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "Links you share are unique to you and may be used to improve suggestions and ads you see.",
                        ),
                        TextSpan(
                          text: "Lean more",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 40),
                  Button(
                    textValue: "Continue",
                    method: () {},
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    },
  );
}
