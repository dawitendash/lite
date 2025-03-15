import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  final String textvalue;
  final int maxline;

  const Input({Key? key, this.textvalue = "", this.maxline = 1})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      onChanged: (value) {
        print(value);
      },
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 230, 234, 239),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Color.fromARGB(255, 207, 205, 205),
            width: 1.0, // Fixed width for better visibility
          ),
          borderRadius: BorderRadius.circular(5), // Rounded corners
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.blue, width: 1.0),
          borderRadius: BorderRadius.circular(5),
        ),
        hintText: textvalue,
        suffixIcon: maxline == 1 ? Icon(Icons.arrow_drop_down) : null,
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      ),
      maxLines: maxline,
    );
  }
}
