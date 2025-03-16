import 'package:fblite/Components/MarketPlace/ProductDetail/Product_description.dart';
import 'package:fblite/Components/MarketPlace/ProductDetail/Product_icons.dart';
import 'package:fblite/Components/MarketPlace/ProductDetail/product_picture.dart';
import 'package:fblite/Components/MarketPlace/ProductDetail/seller_Information.dart';
import 'package:fblite/Components/MarketPlace/ProductDetail/send_message.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Boldtext(text: "Yonatan suzuki ", textSize: 16),
        bottom: BottomBorderline(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //product picture
            ProductPicture(),
            SizedBox(height: 10),
            //send message to the seller
            SendMessage(),
            SizedBox(height: 20),
            //link about theproduct detail
            ProductIcons(),
            SizedBox(height: 20),
            BottomBorderline(),
            SizedBox(height: 5),
            //product descriptoin
            ProductDescription(),
            SizedBox(height: 10),
            BottomBorderline(),
            SizedBox(height: 10),
            //seller information
            SellerInformation(),
          ],
        ),
      ),
    );
  }
}

// Row(
            //   mainAxisSize: MainAxisSize.min,
            //   children: [
            //     BuildIconButton(icon: FontAwesomeIcons.bell, method: () {}),
            //     BuildIconButton(
            //       icon: FontAwesomeIcons.facebookMessenger,
            //       method: () {},
            //     ),
            //     BuildIconButton(icon: FontAwesomeIcons.bookmark, method: () {}),
            //     BuildIconButton(icon: FontAwesomeIcons.share, method: () {}),
            //     BuildIconButton(icon: Icons.do_disturb, method: () {}),
            //   ],
            // ),





             











            /// // Container(
            //   decoration: BoxDecoration(
            //     borderRadius: BorderRadius.circular(3),
            //     border: Border.all(color: Colors.grey),
            //   ),
            //   child: Column(
            //     children: [
            //       Row(
            //         children: [
            //           FaIcon(
            //             FontAwesomeIcons.facebookMessenger,
            //             color: Colors.blue,
            //           ),
            //           SizedBox(width: 5),
            //           Boldtext(text: "Send seller a message", textSize: 16),
            //           Input(textvalue: "is still avaliable?", maxline: 1),
            //           Button(
            //             textValue: "Send",
            //             method: () {},
            //             backgroundColor: Colors.blue,
            //             foregroundColor: Colors.white,
            //           ),
            //         ],
            //       ),
            //       SizedBox(height: 10),
            //     ],
            //   ),
            // ),