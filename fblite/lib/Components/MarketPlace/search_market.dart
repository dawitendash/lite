import 'package:fblite/Controllers/BoldText.dart';
import 'package:flutter/material.dart';

class SearchMarket extends StatelessWidget {
  const SearchMarket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Boldtext(text: "Search marketplace", textSize: 16)),
      body: SingleChildScrollView(child: Column(children: [

          ],
        )),
    );
  }
}
