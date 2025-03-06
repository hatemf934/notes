import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
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
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              noteModel.date,
              style: TextStyle(
                  fontFamily: FontFamilyManager.kInterFont,
                  color: Colors.grey,
                  fontSize: FontSizeManager.font10),
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
        )
      ],
    );
  }
}
