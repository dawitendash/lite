import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:flutter/material.dart';

void ShareModal(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.sizeOf(context).height * 0.4,
          width: double.maxFinite,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Fullexpandspaces(
                textValue: "Share to Facebook",
                icons: Icons.note_alt_outlined,
              ),
              SizedBox(height: 5),
              Fullexpandspaces(
                textValue: "Share to your story now",
                icons: Icons.refresh,
              ),
              SizedBox(height: 5),
              Fullexpandspaces(
                textValue: "Share to s friend's profile",
                icons: Icons.person_add_alt,
              ),
              SizedBox(height: 5),
              Fullexpandspaces(
                textValue: "Share in a group",
                icons: Icons.groups,
              ),
              SizedBox(height: 5),
              Fullexpandspaces(
                textValue: "Share as a message",
                icons: Icons.message,
              ),
              SizedBox(height: 5),
              Fullexpandspaces(textValue: "More options", icons: Icons.share),
              SizedBox(height: 5),
              Fullexpandspaces(textValue: "Copy link", icons: Icons.copy),
            ],
          ),
        ),
      );
    },
  );
}
