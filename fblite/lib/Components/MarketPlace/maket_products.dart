import 'package:fblite/Components/MarketPlace/ProductDetail/product_detail.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Navigation.dart';
import 'package:flutter/material.dart';

class MarketProducts extends StatelessWidget {
  const MarketProducts({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Boldtext(text: "Today's picks", textSize: 13),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: "Woldia",
                    style: TextStyle(color: Colors.blue),
                  ),
                  TextSpan(text: "56km", style: TextStyle(color: Colors.blue)),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 10),
        GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemCount: 4,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigateto(context, ProductDetail());
              },
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/test.jpg",
                    height: 100,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(height: 10),
                  Boldtext(text: "ETB 12,000", textSize: 14),
                  Text(
                    "this is the product detail bro haha",
                    style: TextStyle(
                      color: Colors.blueGrey,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}
