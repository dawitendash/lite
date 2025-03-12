import 'package:fblite/Views/ForgetPassword.dart';
import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 20),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Forgetpassword()),
          );
        },
        child: Text(
          'I already have an account',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: const Color.fromARGB(255, 20, 130, 220),
            fontWeight: FontWeight.bold,
            fontSize: 13,
          ),
        ),
      ),
    );
  }
}
