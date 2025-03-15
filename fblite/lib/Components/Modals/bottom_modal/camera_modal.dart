import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:flutter/material.dart';

void CameraModal(BuildContext context) {
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
        width: double.maxFinite,
        height: MediaQuery.of(context).size.height * 0.2,
        child: Column(
          children: [
            Fullexpandspaces(
              textValue: "Take a photo",
              icons: Icons.camera_alt_outlined,
              method: () {
                print("Take camera is clicked");
              },
            ),
            Fullexpandspaces(
              textValue: "Upload photo",
              icons: Icons.folder_open,
              method: () {
                print("Upload photo is clicked");
              },
            ),
          ],
        ),
      );
    },
  );
}
