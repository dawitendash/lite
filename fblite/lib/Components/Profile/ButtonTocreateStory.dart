import 'package:fblite/Components/Modals/bottom_modal/profile_dot.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:flutter/material.dart';

class Buttontocreatestory extends StatelessWidget {
  const Buttontocreatestory({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
            child: Button(
              icon: Icons.add,
              textValue: "Add to story",
              method: () {},
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white,
            ),
          ),
          SizedBox(width: 5),
          Expanded(
            child: Button(
              icon: Icons.edit,
              textValue: "Edit profile",
              method: () {},
              backgroundColor: const Color(0xFFE4E6E8),
              foregroundColor: Colors.black,
            ),
          ),
          SizedBox(width: 5),
          SizedBox(
            width: 40,
            child: Button(
              icon: Icons.more_horiz,
              backgroundColor: const Color(0xFFE4E6E8),
              foregroundColor: Colors.black,
              textValue: "...",
              method: () {
                ProfileDotModal(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
