import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

void MoreDetailModal(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(0),
        topRight: Radius.circular(0),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        margin: EdgeInsets.only(top: 20, right: 10),
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height * 0.15,
        child: Column(
          children: [
            Fullexpandspaces(textValue: "Hide Listing", method: () {}),
            SizedBox(height: 3),
            BottomBorderline(),
            SizedBox(height: 3),
            Fullexpandspaces(textValue: "Report Listing", method: () {}),
            SizedBox(height: 3),
            BottomBorderline(),
            SizedBox(height: 3),
            Fullexpandspaces(textValue: "Report seller", method: () {}),
          ],
        ),
      );
    },
  );
}
