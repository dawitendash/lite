import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Boldtext(text: "Inbox", textSize: 16),
        bottom: BottomBorderline(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: 10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Buillinkscotainer(textValue: "All", textSize: 9),
                Buillinkscotainer(textValue: "Pending payment", textSize: 9),
                Buillinkscotainer(textValue: "To be shipped", textSize: 9),
                Buillinkscotainer(textValue: "Shipped", textSize: 9),
                Buillinkscotainer(textValue: "Cash on delivery", textSize: 9),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  Icon(
                    Icons.messenger_outline,
                    size: 100,
                    color: const Color.fromARGB(255, 174, 169, 169),
                  ),
                  NormalText("No Chat"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
