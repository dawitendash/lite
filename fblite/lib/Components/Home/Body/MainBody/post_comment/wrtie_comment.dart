import 'package:fblite/Controllers/BorderLine.dart';
import 'package:flutter/material.dart';

class WrtieComment extends StatefulWidget {
  const WrtieComment({super.key});

  @override
  State<WrtieComment> createState() => _WrtieCommentState();
}

class _WrtieCommentState extends State<WrtieComment> {
  bool isInputVAlueChange = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          BottomBorderline(),
          SizedBox(width: 10), // Adjust spacing
          Icon(Icons.photo_library_outlined),
          SizedBox(width: 10),
          Expanded(
            child: TextField(
              onChanged: (value) {
                setState(() {
                  isInputVAlueChange = value.isNotEmpty;
                });
              },
              keyboardType:
                  TextInputType.text, // Use text input type for comments
              decoration: InputDecoration(
                hintText: "Write the comment...",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                suffixIcon:
                    isInputVAlueChange
                        ? Icon(Icons.send, color: Colors.blue)
                        : Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Icon(Icons.face_6_sharp),
                            Icon(Icons.gif_box),
                            Icon(Icons.face),
                          ],
                        ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
