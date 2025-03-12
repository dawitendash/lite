// import 'Components/LoginPage.dart';
// import 'Components/headerBar.dart';
import 'package:fblite/Views/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Lite',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
      home: Home(),
      //  Scaffold(
      //   backgroundColor: Colors.white,
      //   appBar: AppBar(
      //     backgroundColor: Colors.white,
      //     elevation: 0,
      //     title: headerBar('English', MainAxisAlignment.center),
      //   ),
      //   body: Loginpage(),
      // ),
    );
  }
}
