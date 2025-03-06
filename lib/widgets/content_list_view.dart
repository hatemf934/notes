import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/models/note_model.dart';

class ContentListView extends StatelessWidget {
  const ContentListView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          noteModel.title,
          style: TextStyle(
              fontFamily: FontFamilyManager.kOtamaFont,
              color: kPrimaryColor,
              fontSize: FontSizeManager.font30),
        ),
        SizedBox(height: HeightManager.h10),
        Text(
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          noteModel.subTitle,
          style: TextStyle(
              fontFamily: FontFamilyManager.kInterFont,
              color: Colors.grey,
              fontSize: FontSizeManager.font20),
        ),
        SizedBox(height: HeightManager.h8),
        Text(
          noteModel.date,
          style: TextStyle(
              fontFamily: FontFamilyManager.kInterFont,
              color: Colors.grey,
              fontSize: FontSizeManager.font10),
        )
      ],
    );
  }
}
