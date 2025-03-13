import 'package:fblite/Components/app_bar/app_bar.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Views/CreateAccount.dart';
import 'package:fblite/Views/ForgetPassword.dart';
import 'package:flutter/material.dart';

class Loginpage extends StatelessWidget {
  Loginpage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: CustomAppBar(app_bar_text: "")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const SizedBox(height: 130),
            const Center(
              child: Icon(
                Icons.facebook,
                size: 100.0,
                color: Color.fromARGB(255, 7, 143, 255),
              ),
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                TextField(
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Username or email",
                    labelStyle: TextStyle(color: Colors.black54),
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 15),
                TextField(
                  obscureText: true,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                  ),
                  decoration: const InputDecoration(
                    labelText: "Password",
                    labelStyle: TextStyle(color: Colors.black54),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.blue),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 2.0),
                    ),
                    prefixIcon: Icon(Icons.lock),
                  ),
                ),
                const SizedBox(height: 20),
                Button(
                  textValue: "Continue",
                  method: () {
                    print("Login Button Pressed");
                  },
                  foregroundColor: Colors.white,
                  backgroundColor: Colors.blueAccent,
                ),
                const SizedBox(height: 30),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Forgetpassword()),
                    );
                  },
                  child: const Text(
                    "Forgot password?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                const SizedBox(height: 170),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CreateAccount()),
                    );
                  },
                  child: Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(
                      vertical: 15,
                      horizontal: 20,
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromARGB(255, 123, 179, 224),
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Text(
                        "Create new account",
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 27, 27, 28),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Image.asset('assets/images/meta.png', height: 50),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
