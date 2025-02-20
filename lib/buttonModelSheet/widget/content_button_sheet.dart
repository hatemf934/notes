import 'package:flutter/material.dart';
import 'package:note_demo/buttonModelSheet/widget/IconControlButtonSheet.dart';
import 'package:note_demo/buttonModelSheet/widget/TitleButtonSheet.dart';
import 'package:note_demo/core/height_width_manager.dart';

class ContentShowModel extends StatelessWidget {
  const ContentShowModel({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const TitleButtonSheet(),
        Divider(
          height: HeightManager.h30,
          thickness: 1,
          color: Colors.grey,
        ),
        const IconControlButtonSheet(),
      ],
    );
  }
}
