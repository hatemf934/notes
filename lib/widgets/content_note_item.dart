import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/models/note_model.dart';

class ContentNoteTips extends StatelessWidget {
  const ContentNoteTips({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          noteModel.title,
          style: TextStyle(
              fontFamily: FontFamilyManager.kOtamaFont,
              color: kPrimaryColor,
              fontSize: FontSizeManager.font20),
        ),
        SizedBox(height: HeightManager.h8),
        Expanded(
          child: Text(
            noteModel.subTitle,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                fontFamily: FontFamilyManager.kInterFont,
                color: Colors.grey,
                fontSize: FontSizeManager.font16),
          ),
        ),
        SizedBox(height: HeightManager.h20),
        Text(
          noteModel.date,
          style: TextStyle(
              fontFamily: FontFamilyManager.kInterFont,
              color: Colors.grey,
              fontSize: FontSizeManager.font12),
        ),
      ],
    );
  }
}
