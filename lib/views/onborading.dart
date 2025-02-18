import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/widgets/custom_circle_avatar.dart';

class Onborading extends StatelessWidget {
  const Onborading({super.key});
  static String id = RouteManager.kOnbording;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.all(PaddingManager.pd16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(kImage),
            Text(
              TextManager.kTitleBording,
              style: TextStyle(
                color: kSecondaryColor,
                fontFamily: FontFamilyManager.kTitleFamily,
                fontSize: FontSizeManager.font48,
              ),
            ),
            SizedBox(
              height: HeightManager.h30,
            ),
            Text(
              textAlign: TextAlign.center,
              TextManager.kSubTitleBording,
              style: TextStyle(
                  color: kSecondaryColor,
                  fontFamily: FontFamilyManager.kSubTitleFamily,
                  fontSize: FontSizeManager.font16,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: HeightManager.h40,
            ),
            const CustomCircleAvatar(),
          ],
        ),
      ),
    );
  }
}
