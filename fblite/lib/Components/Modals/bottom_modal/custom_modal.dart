import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:flutter/material.dart';

void CustomModal(BuildContext context) {
  showModalBottomSheet(
    context: context,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(10),
        width: double.maxFinite,
        height: MediaQuery.sizeOf(context).height * 0.2,
        child: Column(
          children: [
            Fullexpandspaces(
              icons: Icons.school,
              textValue: "College",
              method: () {
                print("college is clicked bro");
              },
            ),
            Fullexpandspaces(
              icons: Icons.location_city_rounded,
              textValue: "High school",
              method: () {
                print("High school is clicked bro");
              },
            ),
          ],
        ),
      );
    },
  );
}
