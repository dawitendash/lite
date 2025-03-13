import 'package:fblite/Components/MarketPlace/Input.dart';
import 'package:fblite/Components/MarketPlace/swicth_button.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class Sell extends StatefulWidget {
  const Sell({super.key});
  @override
  State<Sell> createState() => _sell();
}

class _sell extends State<Sell> {
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
            Input(textvalue: 0.toString()),
            SizedBox(height: 10),
            NormalText("Location"),
            Input(textvalue: "woldia"),
            SizedBox(height: 10),
            NormalText("Description"),
            Input(maxline: 5),
            SizedBox(height: 10),
            NormalText("Avaliablity"),
            Input(textvalue: "List as Asingle item"),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NormalText("Offer shipping"),
                SwitchButton(IsOfferDeliverOn: false),
              ],
            ),
            SizedBox(height: 10),
            NormalText("Hide from friends"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              "This shipping still public. if you hide this fron friends, they won't see it in most cases. ",
                        ),
                        TextSpan(
                          text: "Learn more",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                SwitchButton(IsOfferDeliverOn: false),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                NormalText("Turn on commenting on list"),
                SwitchButton(IsOfferDeliverOn: true),
              ],
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Add photos",
              method: () {},
              icon: Icons.camera_alt_outlined,
              foregroundColor: Colors.blueGrey,
              backgroundColor: Colors.white,
            ),
            SizedBox(height: 100),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text:
                        "All listings go throgh a quick standard review when published to make sure they follow our",
                  ),
                  TextSpan(
                    text: " Commerce policies ",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(
                    text:
                        "before they are visible to others. Items like animals,drugs,weapons, counterfeits and more are not allowed ",
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            BottomBorderline(),
            SizedBox(height: 10),
            Button(
              textValue: "Publish",
              method: () {},
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
