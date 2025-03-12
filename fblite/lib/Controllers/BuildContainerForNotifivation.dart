import 'package:flutter/material.dart';

class Buildcontainerfornotifivation extends StatefulWidget {
  String textValue;
  Buildcontainerfornotifivation({Key? key, required this.textValue})
    : super(key: key);
  _builldContainerFornotification createState() =>
      _builldContainerFornotification();
}

class _builldContainerFornotification
    extends State<Buildcontainerfornotifivation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(color: Colors.red, shape: BoxShape.circle),
      child: Center(
        child: Text(
          widget.textValue,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
            fontSize: 9,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
