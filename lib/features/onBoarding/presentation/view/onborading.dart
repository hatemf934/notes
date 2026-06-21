import 'package:flutter/material.dart';
import 'package:notabli/core/utils/assets_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/features/onBoarding/presentation/view/widgets/custom_get_starting_button.dart';
import 'package:notabli/features/onBoarding/presentation/view/widgets/text_onborading_section.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AssetsManager.logoApp),
            const SizedBox(height: HeightManager.h20),
            const TextOnBoardingSection(),
            const SizedBox(height: HeightManager.h30),
            const CustomGetStartingButton()
          ],
        ),
      ),
    );
  }
}
