import 'package:flutter/material.dart';

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
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        cursorColor: Colors.grey,

        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(color: Colors.grey, fontSize: size), // نص تلميحي
          border: InputBorder.none, // إزالة الحدود
        ),
        maxLines: maxlines, // يسمح بإدخال أكثر من سطر
        keyboardType: TextInputType.multiline, // لوحة مفاتيح متعددة الأسطر
      ),
    );
  }
}
