import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/padding_manager.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom(
      {super.key,
      required this.text,
      required this.maxlines,
      required this.size});
  final String text;
  final int maxlines;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingManager.pd16),
      child: TextField(
        cursorColor: Colors.grey,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
              fontFamily: FontFamilyManager.kNunitoFont,
              color: Colors.grey,
              fontSize: size),
          border: InputBorder.none,
        ),
        maxLines: maxlines,
        keyboardType: TextInputType.multiline,
      ),
    );
  }
}
