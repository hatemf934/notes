import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
          top: PaddingManager.pd12,
          bottom: PaddingManager.pd8,
          left: PaddingManager.pd16,
          right: PaddingManager.pd16,
        ),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 12, 246, 215),
          borderRadius: BorderRadius.circular(RadiusManager.rd16),
        ),
        child: ContentNoteTips(),
      ),
    );
  }
}

class ContentNoteTips extends StatelessWidget {
  const ContentNoteTips({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Title 1",
          style: TextStyle(
              fontFamily: FontFamilyManager.kOtamaFont,
              color: kPrimaryColor,
              fontSize: FontSizeManager.font30),
        ),
        SizedBox(height: HeightManager.h8),
        Flexible(
          child: Text(
            "hatem fathy adel \n fetoh farag salem\n he is a bad boy asljgjsjhwpsp]dsosdhldghslghhglshl",
            maxLines: 4, // تحديد عدد الأسطر
            overflow: TextOverflow.ellipsis, // إظهار نقاط إذا تجاوز النص الحد
            style: TextStyle(
                fontFamily: FontFamilyManager.kInterFont,
                color: kPrimaryColor,
                fontSize: FontSizeManager.font16),
          ),
        ),
        SizedBox(height: HeightManager.h20),
        Text(
          "may 12 2025",
          style: TextStyle(
              fontFamily: FontFamilyManager.kInterFont,
              color: kPrimaryColor,
              fontSize: FontSizeManager.font12),
        ),
      ],
    );
  }
}
