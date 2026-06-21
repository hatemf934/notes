import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';
import 'package:notabli/features/home/presentation/view/show_note_screen.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          right: PaddingManager.pd16, bottom: PaddingManager.pd24),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(RadiusManager.rd48),
        ),
        height: HeightManager.h70,
        width: WidthManager.w70,
        child: FloatingActionButton(
          backgroundColor: ColorManager.greyColor100,
          onPressed: () {
            Navigator.pushNamed(context, ShowNoteScreen.id).then((_) {
              // إخفاء لوحة المفاتيح بعد الانتقال
              FocusScope.of(context).unfocus();
            });
            ;
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(RadiusManager.rd48),
          ),
          child: const Icon(
            Icons.add,
            color: ColorManager.colorgrey,
            size: FontSizeManager.font48,
          ),
        ),
      ),
    );
  }
}
