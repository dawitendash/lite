import 'package:fblite/Controllers/BoldText.dart';
import 'package:fblite/Controllers/Button.dart';
import 'package:fblite/Controllers/NormalText.dart';
import 'package:flutter/material.dart';

class TryAnotherDevice extends StatefulWidget {
  const TryAnotherDevice({Key? key}) : super(key: key);
  @override
  _TryAnotherDeviceState createState() => _TryAnotherDeviceState();
}

class _TryAnotherDeviceState extends State<TryAnotherDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Boldtext(text: "Try another device to continue"),
            const SizedBox(height: 10),
            NormalText(
              "This must be a device you've used to log into this account before",
              16,
            ),
            const SizedBox(height: 10),
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                'assets/images/why.jpg',
                height: 150,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            Boldtext(text: 'Why?'),
            SizedBox(height: 10),
            NormalText(
              "We can't match the device you're using to the account you're trying to recover,so it's not safe to go further.",
              16,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.all(20),
        child: Button(
          textValue: "Can't try another device?",
          method: () {},
          foregroundColor: Colors.black87,
          backgroundColor: const Color.fromARGB(255, 220, 223, 224),
        ),
      ),
    );
  }
}
