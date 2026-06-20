import 'package:flutter/material.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/features/onBoarding/presentation/view/widgets/custom_circle_avatar.dart';

class Onborading extends StatelessWidget {
  const Onborading({super.key});
  static String id = RouteManager.kOnbording;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(PaddingManager.pd16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kImage),
            const SizedBox(
              height: HeightManager.h30,
            ),
            const Text(
              TextManager.kTitleBording,
              style: TextStyle(
                fontFamily: FontFamilyManager.kOtamaFont,
                fontSize: FontSizeManager.font48,
              ),
            ),
            const SizedBox(
              height: HeightManager.h30,
            ),
            const Text(
              textAlign: TextAlign.center,
              TextManager.kSubTitleBording,
              style: TextStyle(
                  fontFamily: FontFamilyManager.kRobotoFont,
                  fontSize: FontSizeManager.font16,
                  fontWeight: FontWeight.w400),
            ),
            const SizedBox(
              height: HeightManager.h40,
            ),
            const CustomCircleAvatar(),
          ],
        ),
      ),
    );
  }
}
