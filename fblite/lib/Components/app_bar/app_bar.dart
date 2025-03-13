import 'package:fblite/Controllers/BoldText.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  String? app_bar_text;
  double? app_bar_text_size;
  Widget? method;
  String? endIconText;
  VoidCallback? endIconTextMethod;
  CustomAppBar({
    Key? key,
    this.app_bar_text,
    this.method,
    this.endIconText,
    this.app_bar_text_size,
    this.endIconTextMethod,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisSize: MainAxisSize.max,
      children: [
        Boldtext(text: app_bar_text, textSize: app_bar_text_size),

        if (endIconText != null && endIconTextMethod != null) ...[
          TextButton(
            onPressed: () {
              endIconTextMethod!();
            },
            child: Text(endIconText!),
          ),
          method!,
        ],
      ],
    );
  }
}
