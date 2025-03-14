import 'package:fblite/Components/Search/Group.dart';
import 'package:fblite/Components/Search/MoreToTry.dart';
import 'package:fblite/Components/Search/Popular_reels.dart';
import 'package:fblite/Components/Search/SearchBar.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 70,
        title: Searchbars(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [PopularReels(), SizedBox(height: 5), Group(), Moretotry()],
        ),
      ),
    );
  }
}
