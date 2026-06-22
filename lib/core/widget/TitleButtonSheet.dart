import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/text_manager.dart';

class TitleButtonSheet extends StatelessWidget {
  const TitleButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
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
                style: TextStyle(color: ColorManager.colorgrey),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
