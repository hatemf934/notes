import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              noteModel.date,
              style: TextStyle(
                  fontFamily: FontFamilyManager.kInterFont,
                  color: Colors.grey,
                  fontSize: FontSizeManager.font12),
            ),
            IconButton(
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<DisplaynoteCubit>(context).displaynote();
                },
                icon: Icon(
                  FontAwesomeIcons.trash,
                  size: FontSizeManager.font16,
                  color: Colors.grey,
                ))
          ],
        ),
      ],
    );
  }
}
