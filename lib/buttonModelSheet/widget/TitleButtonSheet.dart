import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/text_manager.dart';

class TitleButtonSheet extends StatelessWidget {
  const TitleButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: WidthManager.w50,
        ),
        Padding(
          padding: EdgeInsets.all(PaddingManager.pd5),
          child: Column(
            children: [
              Text(
                TextManager.kTitleModelSheet,
                style: TextStyle(
                  fontSize: FontSizeManager.font25,
                ),
              ),
              Text(
                TextManager.kSave,
                style: const TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
        IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.cancel_outlined,
              size: FontSizeManager.font30,
              color: Colors.grey,
            ))
      ],
    );
  }
}
