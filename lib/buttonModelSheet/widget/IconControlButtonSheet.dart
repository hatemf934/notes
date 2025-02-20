import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/text_manager.dart';

class IconControlButtonSheet extends StatelessWidget {
  const IconControlButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check_circle_outline_rounded,
                  color: kSecondaryColor,
                  size: FontSizeManager.font40,
                )),
            Text(TextManager.kOk),
          ],
        ),
        SizedBox(
          width: WidthManager.w50,
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.delete,
                  color: Colors.red,
                  size: FontSizeManager.font40,
                )),
            Text(TextManager.kDelete),
          ],
        ),
      ],
    );
  }
}
