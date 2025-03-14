import 'package:fblite/Controllers/Button.dart';
import 'package:flutter/material.dart';

class PopularReels extends StatefulWidget {
  const PopularReels({super.key});

  @override
  State<PopularReels> createState() => _PopularReelsState();
}

class _PopularReelsState extends State<PopularReels> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Popular Reels"),
        SizedBox(height: 10),
        SizedBox(
          height: 250,
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: SizedBox(
                    width: 250,
                    child: Card(
                      elevation: 2,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/images/friends.png",
                          height: double.infinity,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 10),
        Button(
          textValue: "See all",
          method: () {},
          foregroundColor: Colors.black,
          backgroundColor: Color(0xFFE4E6E8),
        ),
      ],
    );
  }
}
