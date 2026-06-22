import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_family_manager.dart';

class Styles {
  Styles._();
  static TextStyle styleOtamaFont = TextStyle(
    fontWeight: FontWeight.w500,
    fontFamily: FontFamilyManager.kOtamaFont,
    color: ColorManager.greyColor100,
  );
  static const TextStyle styleInterFontgrey = TextStyle(
    fontFamily: FontFamilyManager.kInterFont,
    color: Colors.grey,
  );
  static TextStyle styleInterFontgrey100 = TextStyle(
    fontFamily: FontFamilyManager.kInterFont,
    color: ColorManager.greyColor100,
  );
  static TextStyle styleNunitoFont = TextStyle(
    fontFamily: FontFamilyManager.kNunitoFont,
    color: ColorManager.greyColor100,
  );
}
