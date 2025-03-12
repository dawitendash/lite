import 'package:flutter/material.dart';

class Searchbars extends StatefulWidget {
  const Searchbars({super.key});

  @override
  State<Searchbars> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbars> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: SizedBox(
            height: 40,
            child: SearchBar(
              elevation: WidgetStateProperty.all(0.0),
              hintText: "search...",
              backgroundColor: WidgetStateProperty.all(Color(0xFFE4E6E8)),
            ),
          ),
        ),
        Icon(Icons.search),
      ],
    );
  }
}
