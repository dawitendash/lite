import 'package:flutter/material.dart';

void Navigateto(context, Widget NavgatedClass) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => NavgatedClass),
  );
}
