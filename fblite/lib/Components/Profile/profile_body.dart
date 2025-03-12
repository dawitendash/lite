import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfileBody extends StatelessWidget {
  const ProfileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Fullexpandspaces(
            textValue: "Current city",
            icons: Icons.home,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          Fullexpandspaces(
            textValue: "Workplace",
            icons: Icons.work,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          Fullexpandspaces(
            textValue: "School",
            icons: Icons.school,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          Fullexpandspaces(
            textValue: "Hometown",
            icons: Icons.location_on_outlined,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          Fullexpandspaces(
            textValue: "Relationship status",
            icons: FontAwesomeIcons.solidHeart,
            bg: Colors.white,
            colors: const Color.fromARGB(255, 174, 169, 169),
          ),
          Fullexpandspaces(
            textValue: "see more about yourself",
            icons: Icons.more_horiz,
            colors: const Color.fromARGB(255, 174, 169, 169),
            bg: Colors.white,
          ),
          BottomBorderline(height: 0.5),
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
              Text("Find Friends", style: TextStyle(color: Colors.blue)),
            ],
          ),
          BottomBorderline(),
        ],
      ),
    );
  }
}
