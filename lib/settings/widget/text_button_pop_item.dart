import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';

class TextButtonPopItem extends StatelessWidget {
  const TextButtonPopItem({super.key, required this.textpop, this.onPressed});
  final String textpop;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          textpop,
          style: TextStyle(
            fontSize: FontSizeManager.font16,
            color: Colors.grey,
          ),
        ));
  }
}
