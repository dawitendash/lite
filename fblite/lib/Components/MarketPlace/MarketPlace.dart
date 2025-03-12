import 'package:fblite/Components/Header/HeaderRows/SecondRow.dart';
import 'package:fblite/Components/Search/Search.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:flutter/material.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});
  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: SecondRow(),
        bottom: BottomBorderline(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Boldtext('Marketplace'), Search()],
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Buillinkscotainer(icons: Icons.person),
                SizedBox(width: 3),
                Buillinkscotainer(textValue: "Inbox"),
                SizedBox(width: 3),
                Buillinkscotainer(textValue: "Sells"),
                SizedBox(width: 3),
                Buillinkscotainer(textValue: "Catagories"),
                SizedBox(width: 3),
                Buillinkscotainer(textValue: "Search"),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
