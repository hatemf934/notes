import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';

class CustomTextIcon extends StatelessWidget {
  const CustomTextIcon({super.key, this.onPressed, required this.text});
  final void Function()? onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey,
            fontSize: FontSizeManager.font20,
            fontFamily: FontFamilyManager.kOtamaFont),
      ),
    );
  }
}
