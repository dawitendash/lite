import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Components/Modals/bottom_modal/custom_modal.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 20,
      ), // Adjusted padding for better spacing
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.start, // Align content to the start
        children: [
          // Current city section
          Fullexpandspaces(
            optionalText: "",
            textValue: "Current city",
            icons: Icons.home,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          // Workplace section
          Fullexpandspaces(
            optionalText: "",
            textValue: "Workplace",
            icons: Icons.work,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          // School section with modal functionality
          Fullexpandspaces(
            optionalText: "",
            method: () {
              CustomModal(context); // Open modal when clicked
            },
            textValue: "School",
            icons: Icons.school,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          // Hometown section
          Fullexpandspaces(
            optionalText: "",
            textValue: "Hometown",
            icons: Icons.location_on_outlined,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          // Relationship status section
          Fullexpandspaces(
            optionalText: "",
            textValue: "Relationship status",
            icons: FontAwesomeIcons.solidHeart,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          // "See more about yourself" section
          Fullexpandspaces(
            optionalText: "",
            textValue: "See more about yourself",
            icons: Icons.more_horiz,
            colors: const Color.fromARGB(255, 174, 169, 169),
            bg: Colors.white,
          ),
          // Bottom Border Line for separation
          BottomBorderline(height: 0.5),
          // Row for Friends and Find Friends section
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 150,
                child: Fullexpandspaces(
                  textValue: "Friends",
                  colors: const Color.fromARGB(255, 174, 169, 169),
                ),
              ),
              Text(
                "Find Friends",
                style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.bold,
                ), // Added bold text style
              ),
            ],
          ),
          // Bottom Border Line to end the section
          BottomBorderline(),
        ],
      ),
    );
  }
}
