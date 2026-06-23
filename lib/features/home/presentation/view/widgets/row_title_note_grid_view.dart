import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/features/adding_note/presentation/bloc/note_cubit/note_cubit.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_icon_button_content_note.dart';

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
        CustomIconButtonContentNote(
          onPressed: () {
            noteModel.delete();
            BlocProvider.of<NoteCubit>(context).getNote();
          },
          sizeIcon: FontSizeManager.font16,
          iconData: FontAwesomeIcons.trash,
        ),
      ],
    );
  }
}
