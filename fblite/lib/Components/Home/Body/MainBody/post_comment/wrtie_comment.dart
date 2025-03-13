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
    return Row(
      children: [
        BottomBorderline(),
        SizedBox(height: 10),
        Icon(Icons.photo_library_outlined),
        SizedBox(width: 10),
        Expanded(
          child: TextField(
            onChanged: (value) {
              setState(() {
                isInputVAlueChange = true;
              });
            },
            keyboardType: TextInputType.datetime,
            decoration: InputDecoration(
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
              hintText: "Write the comment...",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(color: Colors.grey),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
