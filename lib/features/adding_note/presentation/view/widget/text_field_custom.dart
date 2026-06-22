import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';

class TextFieldCustom extends StatelessWidget {
  const TextFieldCustom({
    super.key,
    this.text,
    required this.maxlines,
    required this.size,
    this.validator,
    this.controller,
    this.onChanged,
    required this.autofocus,
    required this.style,
  });
  final String? text;
  final int? maxlines;
  final double size;
  final TextStyle style;
  final bool autofocus;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingManager.pd16),
      child: TextFormField(
        autofocus: autofocus,
        onChanged: onChanged,
        controller: controller,
        style: style,
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
