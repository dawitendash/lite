import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String? textvalue;
  Input({Key? key, this.textvalue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        filled: true,
        fillColor: Color.fromARGB(255, 230, 234, 239),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: const Color.fromARGB(255, 207, 205, 205),
            width: 0,
          ),
        ),
        hintText: textvalue,
        suffixIcon: Icon(Icons.arrow_drop_down),
        contentPadding: EdgeInsets.symmetric(vertical: 3, horizontal: 3),
      ),
    );
  }
}
