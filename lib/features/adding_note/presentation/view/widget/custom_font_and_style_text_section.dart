import 'package:flutter/material.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/custom_font_section.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/custom_style_section.dart';

class CustomFontAndStyleTextSection extends StatelessWidget {
  const CustomFontAndStyleTextSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        CustomStylesSection(),
        SizedBox(height: HeightManager.h10),
        CustomFontsSection(),
      ],
    );
  }
}
