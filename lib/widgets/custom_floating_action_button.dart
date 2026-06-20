import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/utils/font_manager.dart';
import 'package:note_demo/core/utils/height_manager.dart';
import 'package:note_demo/core/utils/padding_manager.dart';
import 'package:note_demo/core/utils/raduis_manager.dart';
import 'package:note_demo/core/utils/width_manager.dart';
import 'package:note_demo/views/show_note_screen.dart';

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
            boxShadow: [
              BoxShadow(
                color: kSecondaryColor.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 2),
              )
            ]),
        height: HeightManager.h70,
        width: WidthManager.w70,
        child: FloatingActionButton(
          splashColor: kSecondaryColor,
          backgroundColor: kSecondaryColor,
          onPressed: () {
            Navigator.pushNamed(context, ShowNoteScreen.id).then((_) {
              // إخفاء لوحة المفاتيح بعد الانتقال
              FocusScope.of(context).unfocus();
            });
            ;
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                RadiusManager.rd48), // Adjust the radius as needed
          ),
          child: const Icon(
            Icons.add,
            color: kPrimaryColor,
            size: FontSizeManager.font48,
          ),
        ),
      ),
    );
  }
}
