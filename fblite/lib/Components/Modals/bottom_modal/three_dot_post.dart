import 'package:fblite/Components/Menus/FullExpandSpace.dart';
import 'package:flutter/material.dart';

void DotsModal(BuildContext context) {
  showModalBottomSheet(
    // backgroundColor: Color(0xFFE4E6E8),
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
          width: double.maxFinite,
          height: MediaQuery.of(context).size.height * 0.8,
          padding: EdgeInsets.only(top: 10, left: 5, right: 5),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Fullexpandspaces(
                textValue: "Interested",
                icons: Icons.add_box_rounded,
                optionalText:
                    "More suggested posts in Your Feed will be like this.",
              ),
              Fullexpandspaces(
                textValue: "Not Interested",
                icons: Icons.remove_circle,
                optionalText:
                    "Less suggested posts in Your Feed will be like this.",
              ),
              Fullexpandspaces(
                textValue: "Save video",
                icons: Icons.bookmark,
                optionalText: "Add this to your saved videos",
              ),
              SizedBox(height: 3),
              Fullexpandspaces(
                textValue: "Share",
                icons: Icons.share,
                optionalText: "",
              ),
              Fullexpandspaces(
                textValue: "i don't want to this",
                icons: Icons.cancel_sharp,
                optionalText: "",
              ),
              Fullexpandspaces(
                textValue: "Report post",
                optionalText:
                    "We won't let Banana Comics Know Who reported this",
                icons: Icons.report,
              ),
              Fullexpandspaces(
                textValue: "Something went wrong",
                icons: Icons.bug_report_sharp,
                optionalText: "",
              ),
              Fullexpandspaces(
                textValue: "Turn on notifications for this post",
                icons: Icons.notifications_active,
                optionalText: "",
              ),
              Fullexpandspaces(
                textValue: "Copy link",
                icons: Icons.copy,
                optionalText: "",
              ),
            ],
          ),
        ),
      );
    },
  );
}
