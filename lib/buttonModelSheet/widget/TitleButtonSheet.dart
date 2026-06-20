import 'package:flutter/material.dart';
import 'package:note_demo/core/utils/font_manager.dart';
import 'package:note_demo/core/utils/padding_manager.dart';
import 'package:note_demo/core/utils/text_manager.dart';

class TitleButtonSheet extends StatelessWidget {
  const TitleButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
      ],
    );
  }
}
