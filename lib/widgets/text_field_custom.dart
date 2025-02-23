import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/padding_manager.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    this.text,
    required this.maxlines,
    required this.size,
    this.validator,
    required this.fontsize,
    this.controller,
    this.onChanged,
  });
  final String? text;
  final int maxlines;
  final double size;
  final double fontsize;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(PaddingManager.pd16),
      child: TextFormField(
        onChanged: onChanged,
        controller: controller,
        style: TextStyle(
            fontSize: fontsize, fontFamily: FontFamilyManager.kNunitoFont),
        validator: validator,
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
