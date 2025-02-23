import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/models/note_model.dart';
import 'package:note_demo/widgets/text_field_custom.dart';

class EditNoteFormView extends StatelessWidget {
  const EditNoteFormView(
      {super.key,
      required this.titleController,
      required this.subTitleController,
      required this.note});

  final TextEditingController titleController;
  final TextEditingController subTitleController;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFieldCustom(
          controller: titleController,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return "null";
            } else {
              return null;
            }
          },
          fontsize: FontSizeManager.font35,
          text: note.title,
          maxlines: 1,
          size: FontSizeManager.font45,
        ),
        TextFieldCustom(
          controller: subTitleController,
          validator: (value) {
            if (value == null || value.trim().isEmpty) {
              return "null";
            } else {
              return null;
            }
          },
          fontsize: FontSizeManager.font23,
          text: note.subTitle,
          maxlines: 10,
          size: FontSizeManager.font20,
        )
      ],
    );
  }
}
