import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void CatagoryModal(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Align(
        alignment: Alignment.center,
        child: Material(
          type: MaterialType.transparency,
          child: Container(
            width:
                MediaQuery.of(context).size.width * 0.9, // 90% of screen width
            child: AlertDialog(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(2),
              ),
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Change Category",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                      IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: Icon(Icons.close),
                      ),
                    ],
                  ),
                  SizedBox(height: 4),
                  BottomBorderline(),
                ],
              ),
              content: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Fullexpandspaces(
                        textValue: "Local listings",
                        icons: Icons.location_on_outlined,
                        colors: Colors.red,
                      ),
                      BottomBorderline(),
                      Fullexpandspaces(
                        textValue: "Buy & Sell Groups",
                        icons: Icons.groups,
                        colors: Colors.lightBlueAccent,
                      ),
                      BottomBorderline(),
                      Fullexpandspaces(
                        textValue: "Vehicles",
                        icons: Icons.directions_car,
                        colors: Color.fromARGB(255, 152, 33, 243),
                      ),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Housing"),
                      BottomBorderline(),
                      Fullexpandspaces(
                        textValue: "Home sales",
                        icons: Icons.home,
                        colors: Colors.redAccent,
                      ),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Rentals"),
                      BottomBorderline(),
                      Fullexpandspaces(
                        textValue: "Home & Garden",
                        icons: Icons.home_filled,
                        colors: Colors.lightBlueAccent,
                      ),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Furniture"),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Household"),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Appliances"),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Tools"),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Garden"),
                      BottomBorderline(),
                      Fullexpandspaces(
                        textValue: "Electronics",
                        icons: Icons.phone_android,
                        colors: Colors.greenAccent,
                      ),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Electronics & computers"),
                      BottomBorderline(),
                      Fullexpandspaces(textValue: "Mobile phones"),
                      BottomBorderline(),
                      Fullexpandspaces(
                        textValue: "Classifieds",
                        icons: FontAwesomeIcons.binoculars,
                        colors: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      );
    },
  );
}
