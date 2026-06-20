import 'package:flutter/material.dart';
import 'package:notabli/buttonModelSheet/widget/IconControlButtonSheet.dart';
import 'package:notabli/buttonModelSheet/widget/TitleButtonSheet.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/utils/height_manager.dart';

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
