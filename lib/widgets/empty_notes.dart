import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/utils/font_family_manager.dart';
import 'package:note_demo/core/utils/font_manager.dart';
import 'package:note_demo/core/utils/height_manager.dart';
import 'package:note_demo/core/utils/text_manager.dart';

class EmptyNotes extends StatelessWidget {
  const EmptyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(
            height: HeightManager.h130,
          ),
          Image.asset(
            kImage,
          ),
          const Text(
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
