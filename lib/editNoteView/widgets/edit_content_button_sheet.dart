import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/editNoteView/widgets/edit_icon_button_sheet.dart';
import 'package:note_demo/editNoteView/widgets/edit_title_button_sheet.dart';
import 'package:note_demo/models/note_model.dart';

class EditContentButtonSheet extends StatelessWidget {
  const EditContentButtonSheet(
      {super.key,
      required this.formkey,
      required this.titleController,
      required this.subTitleController,
      required this.note});
  final GlobalKey<FormState> formkey;
  final TextEditingController titleController;
  final TextEditingController subTitleController;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const EditTitleButtonSheet(),
        Divider(
          height: HeightManager.h30,
          thickness: kthickness,
          color: Colors.grey,
        ),
        EditIconButtonSheet(
          note: note,
          titleController: titleController,
          subTitleController: subTitleController,
          formkey: formkey,
        ),
      ],
    );
  }
}
