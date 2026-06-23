import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/widget/IconControlButtonSheet.dart';
import 'package:notabli/core/widget/TitleButtonSheet.dart';
import 'package:notabli/core/utils/height_manager.dart';

class ContentShowModel extends StatelessWidget {
  const ContentShowModel({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        TitleButtonSheet(),
        Divider(
          height: HeightManager.h30,
          thickness: 0.5,
          color: ColorManager.colorgrey,
        ),
        IconControlButtonSheet(),
      ],
    );
  }
}
