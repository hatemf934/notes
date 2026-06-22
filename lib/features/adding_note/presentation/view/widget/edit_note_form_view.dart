import 'package:flutter/material.dart';
import 'package:notabli/core/models/note_model.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/custom_bloc_builder_note_form_view.dart';

class EditNoteFormView extends StatelessWidget {
  const EditNoteFormView({
    super.key,
    required this.titleController,
    required this.subTitleController,
    required this.note,
  });

  final TextEditingController titleController;
  final TextEditingController subTitleController;
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return CustomBlocBuilderNoteFormView(
        titleController: titleController,
        subTitleController: subTitleController,
        title: note.title,
        subtitle: note.subTitle,
        autoFocus: true);
  }
}
