import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';
import 'package:notabli/features/home/presentation/view/home_screen.dart';

class CustomGetStartingButton extends StatelessWidget {
  const CustomGetStartingButton({super.key});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
        onPressed: () => Navigator.pushNamed(context, HomeScreen.id),
        style: OutlinedButton.styleFrom(
            padding: const EdgeInsets.symmetric(vertical: PaddingManager.pd16),
            minimumSize: const Size(double.infinity, HeightManager.h40),
            side: const BorderSide(
              color: ColorManager.meduimGrey,
              width: WidthManager.w2,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(RadiusManager.rd35),
            ),
            backgroundColor: ColorManager.colortransparent),
        child: Text(
          TextManager.kGetStrart,
          style: Styles.styleInterFontgrey
              .copyWith(fontSize: FontSizeManager.font25),
        ));
  }
}
