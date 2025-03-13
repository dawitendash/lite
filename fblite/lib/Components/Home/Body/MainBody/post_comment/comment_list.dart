import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class CommentList extends StatelessWidget {
  const CommentList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Boldtext(text: "Most Relevent", textSize: 16),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 20,
                backgroundColor: Color(0xFFE4E6E8),
                child: Icon(Icons.person),
              ),
              SizedBox(width: 10),
              SizedBox(height: 20),
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color.fromARGB(255, 224, 226, 226),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Boldtext(text: " name", textSize: 16),
                      NormalText(
                        "this is the best comment i never have bro this is the best comment i never have bro this is the best comment i never have bro",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
