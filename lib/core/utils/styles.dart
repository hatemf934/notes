import 'package:flutter/painting.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';

class Styles {
  Styles._();
  static const TextStyle styleOtamaFont40 = TextStyle(
      fontSize: FontSizeManager.font40,
      fontWeight: FontWeight.w500,
      fontFamily: FontFamilyManager.kOtamaFont);
  static const TextStyle styleOtamaFont16 = TextStyle(
      fontSize: FontSizeManager.font16,
      fontFamily: FontFamilyManager.kOtamaFont,
      color: ColorManager.meduimGrey);
  static const TextStyle styleInterFont28 = TextStyle(
      fontSize: FontSizeManager.font25,
      color: ColorManager.black87,
      fontFamily: FontFamilyManager.kInterFont);
}
