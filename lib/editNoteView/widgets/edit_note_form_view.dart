import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/models/note_model.dart';

import 'package:note_demo/widgets/text_field_custom.dart';

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
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFieldCustom(
            autofocus: false,
            controller: titleController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            text: note.title,
            fontsize: FontSizeManager.font35,
            maxlines: 1,
            size: FontSizeManager.font45,
          ),
          TextFieldCustom(
            autofocus: false,
            controller: subTitleController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            text: note.subTitle,
            fontsize: FontSizeManager.font23,
            maxlines: 10,
            size: FontSizeManager.font20,
          )
        ],
      ),
    );
  }
}
