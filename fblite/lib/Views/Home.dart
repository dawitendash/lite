import 'package:fblite/Components/Header/HeaderBar.dart';
import 'package:fblite/Components/Home/Body/HorizontalScrollable/CreateStoryAndFriends.dart';
import 'package:fblite/Components/Home/Body/MainBody/post/post.dart';
import 'package:fblite/Components/Home/Body/TopSeachBar.dart';
import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        toolbarHeight: 125,
        automaticallyImplyLeading: false,
        title: HeaderBar(),
        bottom: BottomBorderline(),
      ),
      body: SingleChildScrollView(
        // padding: EdgeInsets.all(5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(height: 10),
            Topseachbar(
              hintValue: "What's on your mind?",
              iconColor: Colors.green,
            ),
            SizedBox(height: 10),
            Createstoryandfriends(),
            post(),
          ],
        ),
      ),
    );
  }
}
