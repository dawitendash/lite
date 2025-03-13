import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:flutter/material.dart';

class Inbox extends StatelessWidget {
  const Inbox({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Boldtext(text: "Inbox", textSize: 16)),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Buillinkscotainer(textValue: "All"),
                Buillinkscotainer(textValue: "Pending payment"),
                Buillinkscotainer(textValue: "To be shipped"),
                Buillinkscotainer(textValue: "Shipped"),
                Buillinkscotainer(textValue: "Cash on delivery"),
              ],
            ),
            SizedBox(height: 20),
            Center(
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Icon(Icons.messenger_outline, color: Colors.black),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    child: Icon(
                      Icons.messenger_outlined,
                      color: Colors.black,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
