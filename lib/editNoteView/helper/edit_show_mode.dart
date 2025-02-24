import 'package:flutter/material.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/editNoteView/widgets/edit_content_button_sheet.dart';
import 'package:note_demo/models/note_model.dart';

void editShowModel({
  required BuildContext context,
  required GlobalKey<FormState> formkey,
  required TextEditingController titleController,
  required TextEditingController subTitleController,
  required NoteModel note,
}) {
  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(RadiusManager.rd20),
            topRight: Radius.circular(RadiusManager.rd20)),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: PaddingManager.pd8,
            right: PaddingManager.pd8,
            bottom: PaddingManager.pd16,
            left: PaddingManager.pd8,
          ),
          child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.2,
              child: EditContentButtonSheet(
                note: note,
                titleController: titleController,
                subTitleController: subTitleController,
                formkey: formkey,
              )),
        );
      });
}
