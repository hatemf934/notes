import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/styles.dart';

Widget headingButton({required String label, required VoidCallback onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Text(label,
        style: Styles.styleInterFontgrey100.copyWith(
          fontSize: FontSizeManager.font30,
          fontWeight: FontWeight.w600,
        )),
  );
}
