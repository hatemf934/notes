import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/core/utils/text_manager.dart';

class TextOnBoardingSection extends StatelessWidget {
  const TextOnBoardingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingManager.pd8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(TextManager.kTitleBording,
              style: Styles.styleOtamaFont
                  .copyWith(fontSize: FontSizeManager.font40)),
          const SizedBox(height: HeightManager.h20),
          Text(TextManager.kSubTitleBording,
              style: Styles.styleInterFontgrey
                  .copyWith(fontSize: FontSizeManager.font16)),
        ],
      ),
    );
  }
}
