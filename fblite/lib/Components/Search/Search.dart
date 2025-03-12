import 'package:fblite/Controllers/Navigation.dart';
import 'package:fblite/Controllers/_buildIconButton.dart';
import 'package:fblite/Views/Search_screen.dart';
import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigateto(context, SearchScreen());
      },
      child: BuildIconButton(icon: Icons.search),
    );
  }
}
