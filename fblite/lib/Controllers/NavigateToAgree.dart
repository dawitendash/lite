import 'package:fblite/Components/AccountCreate/subSteps/AgreeWithFacebook.dart';
import 'package:flutter/material.dart';

void NavigateToAgree(context) {
  Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => AgreeWithFacebook()),
  );
}
