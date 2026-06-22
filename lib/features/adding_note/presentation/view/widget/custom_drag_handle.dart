import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';

class CustomDragHandle extends StatelessWidget {
  const CustomDragHandle(
      {super.key, required this.widthDrag1, required this.widthDrag2});
  final double widthDrag1;
  final double widthDrag2;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: widthDrag1,
          height: HeightManager.h3,
          decoration: BoxDecoration(
            color: ColorManager.meduimGrey,
            borderRadius: BorderRadius.circular(RadiusManager.rd12),
          ),
        ),
        const SizedBox(height: HeightManager.h8),
        Container(
          width: widthDrag2,
          height: HeightManager.h3,
          decoration: BoxDecoration(
            color: ColorManager.meduimGrey,
            borderRadius: BorderRadius.circular(RadiusManager.rd12),
          ),
        ),
      ],
    );
  }
}
