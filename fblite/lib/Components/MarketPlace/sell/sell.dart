import 'package:fblite/Components/MarketPlace/Input.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class Sell extends StatelessWidget {
  const Sell({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Boldtext(text: "New listing", textSize: 16),
        bottom: BottomBorderline(height: 2.0),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            NormalText("Catagory"),
            Input(textvalue: "select"),
            SizedBox(height: 10),
            NormalText("What are you selling?"),
            Input(),
             SizedBox(height: 10),
            NormalText("Price(\$)"),
            Input(textvalue: 0.toString(),),
             SizedBox(height: 10),
            NormalText("Location"),
            Input(textvalue:"woldia"),
          ],
        ),
      ),
    );
  }
}
