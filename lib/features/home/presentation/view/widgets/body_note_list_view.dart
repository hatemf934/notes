import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/features/home/presentation/view/widgets/row_title_note_list_view.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_time_adding_note.dart';

class BodyNoteListView extends StatelessWidget {
  const BodyNoteListView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowTitleNoteListView(noteModel: noteModel),
        Text(noteModel.title,
            style: Styles.styleInterFontgrey100
                .copyWith(fontSize: FontSizeManager.font30)),
        const SizedBox(height: HeightManager.h10),
        Text(
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            noteModel.subTitle,
            style: Styles.styleInterFontgrey
                .copyWith(fontSize: FontSizeManager.font20)),
        const SizedBox(height: HeightManager.h10),
        const CustomTimeAddingNote(
          textSize: FontSizeManager.font13,
        ),
      ],
    );
  }
}
