import 'package:fblite/Components/MarketPlace/inbox/inbox.dart';
import 'package:fblite/Components/MarketPlace/sell/sell.dart';
import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:flutter/material.dart';

class MarketplaceLinks extends StatelessWidget {
  const MarketplaceLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Buillinkscotainer(icons: Icons.person),
        SizedBox(width: 3),
        Buillinkscotainer(
          textValue: "Inbox",
          method: () {
            Navigateto(context, Inbox());
          },
        ),
        SizedBox(width: 3),
        Buillinkscotainer(
          textValue: "Sells",
          method: () {
            Navigateto(context, Sell());
          },
        ),
        SizedBox(width: 3),
        Buillinkscotainer(textValue: "Catagories"),
        SizedBox(width: 3),
        Buillinkscotainer(textValue: "Search"),
      ],
    );
  }
}
