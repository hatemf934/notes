import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/text_manager.dart';

class EmptyNotes extends StatelessWidget {
  const EmptyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          SizedBox(
            height: HeightManager.h130,
          ),
          Image.asset(
            kImage,
          ),
          Text(
            TextManager.kEmptyScreen,
            style: TextStyle(
                fontFamily: FontFamilyManager.kOtamaFont,
                fontWeight: FontWeight.bold,
                fontSize: FontSizeManager.font20),
          )
        ],
      ),
    );
  }
}
