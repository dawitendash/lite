import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/BuilLinksCotainer.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CreateStory extends StatelessWidget {
  const CreateStory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Boldtext(text: "Create post", textSize: 16),
            TextButton(
              onPressed: () {},
              child: Text("Post", style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFFE4E6E8),
                  child: Icon(Icons.person),
                ),
                Column(
                  children: [
                    Boldtext(text: "Dawit Endshaw", textSize: 16),
                    Buillinkscotainer(
                      icons: Icons.groups,
                      textValue: " Friends",
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 10),
            TextField(
              decoration: InputDecoration(
                hintText: "What's on your mind?",
                filled: true,
                fillColor: Color.fromARGB(255, 240, 241, 242),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(7.0),
                ),
                contentPadding: EdgeInsets.all(10),
              ),
              maxLines: 6,
            ),
            SizedBox(height: 30),
            Fullexpandspaces(
              textValue: "Photos/videos",
              icons: Icons.photo_library,
              colors: Colors.green,
            ),
            Fullexpandspaces(
              textValue: "Tag people",
              icons: Icons.person_add_alt_outlined,
              colors: const Color.fromARGB(255, 31, 9, 193),
            ),
            Fullexpandspaces(
              textValue: "Add location",
              icons: Icons.location_on_outlined,
              colors: Colors.red,
            ),
            Fullexpandspaces(
              textValue: "Feeling/Activity",
              icons: FontAwesomeIcons.laugh,
              colors: Colors.amber[800],
            ),
            Fullexpandspaces(
              textValue: "Create event",
              icons: Icons.event,
              colors: Colors.red[600],
            ),
            Fullexpandspaces(
              textValue: "Go live",
              icons: FontAwesomeIcons.videoCamera,
              colors: Colors.red[600],
            ),
            SizedBox(height: 10),
            Button(
              textValue: "Post",
              method: () {},
              foregroundColor: Colors.white,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ),
    );
  }
}
