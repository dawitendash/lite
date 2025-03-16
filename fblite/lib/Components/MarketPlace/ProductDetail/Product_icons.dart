import 'package:fblite/Components/Modals/bottom_modal/marketplace_modal/more_detail_modal.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProductIcons extends StatelessWidget {
  const ProductIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        BuildIconButton(icon: FontAwesomeIcons.bell, method: () {}),
        BuildIconButton(
          icon: FontAwesomeIcons.facebookMessenger,
          method: () {},
        ),
        BuildIconButton(icon: FontAwesomeIcons.bookmark, method: () {}),
        BuildIconButton(icon: FontAwesomeIcons.share, method: () {}),
        BuildIconButton(
          icon: Icons.more_horiz,
          method: () {
            MoreDetailModal(context);
          },
        ),
      ],
    );
  }
}
