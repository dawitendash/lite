import 'package:flutter/material.dart';

class Input extends StatelessWidget {
  String? textvalue;
  int? maxline;
  Input({Key? key, this.textvalue, this.maxline}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      child: TextField(
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
        maxLines: maxline,
      ),
    );
  }
}
