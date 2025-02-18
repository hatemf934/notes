import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/views/show_note_screen.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
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
            Navigator.pushNamed(context, ShowNoteScreen.id);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
                RadiusManager.rd48), // Adjust the radius as needed
          ),
          child: Icon(
            Icons.add,
            color: kPrimaryColor,
            size: FontSizeManager.font48,
          ),
        ),
      ),
    );
  }
}
