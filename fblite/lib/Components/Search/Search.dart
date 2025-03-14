import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:fblite/Views/Search_screen.dart';
import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({super.key});
  @override
  Widget build(BuildContext context) {
    return BuildIconButton(
      icon: Icons.search,
      method: () {
        Navigateto(context, SearchScreen());
      },
    );
  }
}
