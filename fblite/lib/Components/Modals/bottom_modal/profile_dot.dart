import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:flutter/material.dart';

void ProfileDotModal(BuildContext context) {
  showModalBottomSheet(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
    ),
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: EdgeInsets.all(10),
        height: MediaQuery.sizeOf(context).height * 0.8,
        width: double.maxFinite,
        child: Column(
          children: [
            Fullexpandspaces(
              textValue: "Profile status",
              icons: Icons.security_outlined,
            ),
            Fullexpandspaces(
              textValue: "Achive",
              icons: Icons.archive_outlined,
            ),
            Fullexpandspaces(textValue: "Activity log", icons: Icons.book),
            Fullexpandspaces(
              textValue: "Review posts and tags ",
              icons: Icons.message,
            ),
            Fullexpandspaces(textValue: "Lock profile", icons: Icons.lock),
            Fullexpandspaces(
              textValue: "View as",
              icons: Icons.remove_red_eye_outlined,
            ),
            Fullexpandspaces(textValue: "Search", icons: Icons.search),
            Fullexpandspaces(
              textValue: "Turn on professional mode",
              icons: Icons.person,
            ),
            Fullexpandspaces(
              textValue: "Copy link to profile",
              icons: Icons.copy,
            ),
            Fullexpandspaces(
              textValue: " Share as message",
              icons: Icons.messenger_outline_sharp,
            ),
            Fullexpandspaces(
              textValue: "More Sharing options",
              icons: Icons.share,
            ),
          ],
        ),
      );
    },
  );
}
