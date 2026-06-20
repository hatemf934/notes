import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/cubits/displayNote/displaynote_cubit.dart';
import 'package:notabli/models/note_model.dart';

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
          style: const TextStyle(
              fontFamily: FontFamilyManager.kOtamaFont,
              color: kPrimaryColor,
              fontSize: FontSizeManager.font20),
        ),
        const SizedBox(height: HeightManager.h8),
        Text(
          noteModel.subTitle,
          maxLines: 6,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
              fontFamily: FontFamilyManager.kInterFont,
              color: Colors.grey,
              fontSize: FontSizeManager.font16),
        ),
        const SizedBox(height: HeightManager.h20),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              noteModel.date,
              style: const TextStyle(
                  fontFamily: FontFamilyManager.kInterFont,
                  color: Colors.grey,
                  fontSize: FontSizeManager.font12),
            ),
            IconButton(
                onPressed: () {
                  noteModel.delete();
                  BlocProvider.of<DisplaynoteCubit>(context).displaynote();
                },
                icon: const Icon(
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
