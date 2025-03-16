import 'package:fblite/Controllers/BoldText.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Boldtext(text: "Description", textSize: 16),
        SizedBox(height: 5),
        Text(
          "this is description about the product detail bro,this is description about the product detail bro,this is description about the product detail bro ",
        ),
      ],
    );
  }
}
