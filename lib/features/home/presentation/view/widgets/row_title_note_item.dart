import 'package:flutter/material.dart';
import 'package:notabli/core/models/note_model.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_time_adding_note.dart';

class RowTitleNoteItem extends StatelessWidget {
  const RowTitleNoteItem({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(noteModel.date,
            style: Styles.styleInterFontgrey
                .copyWith(fontSize: FontSizeManager.font10)),
        const CustomTimeAddingNote(
          textSize: FontSizeManager.font10,
        )
      ],
    );
  }
}
