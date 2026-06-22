import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';

Widget colorCircle(
    {required List<Color> colors,
    required int index,
    required VoidCallback onTap,
    required int selectedColorIndex}) {
  final color = colors[index];
  final selected = selectedColorIndex == index;
  return GestureDetector(
    onTap: onTap,
    child: Container(
      width: WidthManager.w40,
      height: HeightManager.h40,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: color,
        border: selected
            ? Border.all(
                color: ColorManager.greyColor100, width: WidthManager.w3)
            : null,
      ),
    ),
  );
}
