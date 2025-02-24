import 'package:flutter/material.dart';
import 'package:note_demo/buttonModelSheet/widget/IconControlButtonSheet.dart';
import 'package:note_demo/buttonModelSheet/widget/TitleButtonSheet.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/height_width_manager.dart';

class ContentShowModel extends StatelessWidget {
  const ContentShowModel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const TitleButtonSheet(),
        Divider(
          height: HeightManager.h30,
          thickness: kthickness,
          color: Colors.grey,
        ),
        const IconControlButtonSheet(),
      ],
    );
  }
}
