import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';

class CustomTimeAddingNote extends StatelessWidget {
  const CustomTimeAddingNote({super.key, required this.textSize});
  final double textSize;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: HeightManager.h8,
          width: WidthManager.w8,
          decoration: const BoxDecoration(
              color: ColorManager.colorGreen, shape: BoxShape.circle),
        ),
        const SizedBox(width: WidthManager.w5),
        Text(TextManager.kJustNow,
            style: Styles.styleInterFontgrey.copyWith(fontSize: textSize)),
      ],
    );
  }
}
