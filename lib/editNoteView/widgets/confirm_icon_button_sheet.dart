import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/text_manager.dart';

class ConfirmIconButtonSheet extends StatelessWidget {
  const ConfirmIconButtonSheet({super.key, required this.icondelete});
  final String icondelete;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.check_circle_outline_rounded,
                  color: kSecondaryColor,
                  size: FontSizeManager.font40,
                )),
            Text(
              icondelete,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          width: WidthManager.w50,
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.cancel_rounded,
                  color: Colors.grey,
                  size: FontSizeManager.font40,
                )),
            Text(
              TextManager.kIconCancel,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
