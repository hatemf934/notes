import 'package:flutter/material.dart';
import 'package:notabli/core/helper/show_buttom_adding_notes.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/presentation/view/show_note_view.dart';
import 'package:notabli/features/home/presentation/view/widgets/body_note_list_view.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, ShowNoteView.id, arguments: note);
        showButtomAddingNotes(context);
      },
      child: Container(
          padding: const EdgeInsets.symmetric(
              horizontal: PaddingManager.pd16, vertical: PaddingManager.pd12),
          decoration: BoxDecoration(
            color: ColorManager.primaryColor,
            borderRadius: BorderRadius.circular(RadiusManager.rd12),
          ),
          child: BodyNoteListView(
            noteModel: note,
          )),
    );
  }
}
