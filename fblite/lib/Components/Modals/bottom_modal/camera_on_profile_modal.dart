import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:flutter/material.dart';

void CameraonProfile(BuildContext context) {
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
        height: MediaQuery.sizeOf(context).height * 0.3,
        child: Column(
          children: [
            Fullexpandspaces(textValue: "Add to story", icons: Icons.add),
            Fullexpandspaces(
              textValue: "Take photo",
              icons: Icons.camera_alt_outlined,
            ),
            Fullexpandspaces(
              textValue: "Upload photo",
              icons: Icons.folder_open,
            ),
            Fullexpandspaces(
              textValue: "Select photo on Facebook",
              icons: Icons.photo_album,
            ),
          ],
        ),
      );
    },
  );
}
