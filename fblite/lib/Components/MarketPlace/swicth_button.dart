import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  bool? IsOfferDeliverOn;
  SwitchButton({Key? key, this.IsOfferDeliverOn}) : super(key: key);

  @override
  State<SwitchButton> createState() => _SwicthButtonState();
}

class _SwicthButtonState extends State<SwitchButton> {
  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 0.5,
      child: Switch(
        value: widget.IsOfferDeliverOn!,
        onChanged: (value) {
          setState(() {
            widget.IsOfferDeliverOn = value;
          });
        },
        activeColor: const Color.fromARGB(255, 6, 138, 247),
        inactiveThumbColor: Colors.grey,
      ),
    );
  }
}
