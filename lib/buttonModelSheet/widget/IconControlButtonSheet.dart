import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/text_manager.dart';

class IconControlButtonSheet extends StatelessWidget {
  const IconControlButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.check_circle_outline_rounded,
              color: kSecondaryColor,
              size: FontSizeManager.font40,
            )),
        Text(
          TextManager.kOk,
          style: const TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
