import 'package:flutter/material.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_row_icons_button_grid_view.dart';

class RowTitleNoteGridView extends StatelessWidget {
  const RowTitleNoteGridView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(noteModel.date,
            style: Styles.styleInterFontgrey
                .copyWith(fontSize: FontSizeManager.font10)),
        CustomRowIconsButtonGridView(noteModel: noteModel)
      ],
    );
  }
}
