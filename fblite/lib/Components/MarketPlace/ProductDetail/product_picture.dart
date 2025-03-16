import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class ProductPicture extends StatelessWidget {
  const ProductPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GridView.builder(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 2,
          ),
          itemCount: 4,
          itemBuilder: (context, index) {
            return Image.asset("assets/images/test.jpg", fit: BoxFit.cover);
          },
        ),
        //product title
        SizedBox(height: 10),
        Boldtext(
          text:
              "Yonatan suzuki Yonatan suzuki Yonatan suzuki Yonatan suzuki Yonatan suzuki Yonatan suzuki",
        ),
        NormalText("Listed over a week ago.", 14),
      ],
    );
  }
}
