import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:flutter/material.dart';

class SellerInformation extends StatelessWidget {
  const SellerInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Boldtext(text: "Seller information", textSize: 16),
            Text("Seller detail", style: TextStyle(color: Colors.blue)),
          ],
        ),
        SizedBox(height: 10),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage("assets/images/test.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 3),
                Boldtext(text: "Seller name", textSize: 16),
              ],
            ),
            Buillinkscotainer(
              textValue: "follow",
              icons: Icons.create_new_folder_sharp,
              textSize: 13,
            ),
          ],
        ),
      ],
    );
  }
}
