import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_time_adding_note.dart';
import 'package:notabli/features/home/presentation/view/widgets/row_title_note_grid_view.dart';

class BodyNoteGridView extends StatelessWidget {
  const BodyNoteGridView({
    super.key,
    required this.noteModel,
  });
  final NoteModel noteModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowTitleNoteGridView(noteModel: noteModel),
        const SizedBox(height: HeightManager.h10),
        Text(
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            noteModel.title,
            style: Styles.styleInterFontgrey100.copyWith(
                fontSize: FontSizeManager.font25, fontWeight: FontWeight.bold)),
        const SizedBox(height: HeightManager.h8),
        Text(noteModel.subTitle,
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            style: Styles.styleInterFontgrey
                .copyWith(fontSize: FontSizeManager.font20)),
        const SizedBox(height: HeightManager.h20),
        const CustomTimeAddingNote(
          textSize: FontSizeManager.font10,
        )
      ],
    );
  }
}
