import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/custom_style_chip.dart';

class CustomFontsSection extends StatelessWidget {
  const CustomFontsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: CustomStyleChip(
                label: 'Inter',
                // fontKey: 'Inter',
                style: TextStyle(fontFamily: FontFamilyManager.kInterFont),
              ),
            ),
            SizedBox(width: WidthManager.w8),
            Expanded(
              child: CustomStyleChip(
                label: 'Roboto',
                // fontKey: 'Roboto',
                style: TextStyle(fontFamily: FontFamilyManager.kRobotoFont),
              ),
            ),
            SizedBox(width: WidthManager.w8),
            Expanded(
              child: CustomStyleChip(
                label: 'Nunito',
                // fontKey: 'Nunito',
                style: TextStyle(fontFamily: FontFamilyManager.kNunitoFont),
              ),
            ),
          ],
        ),
        SizedBox(height: HeightManager.h10),
        Row(
          children: [
            Expanded(
              child: CustomStyleChip(
                label: 'Sans serif',
                // fontKey: 'SansSerif',
                style: TextStyle(fontFamily: FontFamilyManager.kPoppins),
              ),
            ),
            SizedBox(width: WidthManager.w8),
            Expanded(
              child: CustomStyleChip(
                label: 'Otama',
                // fontKey: 'Otama',
                style: TextStyle(fontFamily: FontFamilyManager.kOtamaFont),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
