import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/models/note_model.dart';
import 'package:note_demo/editNoteView/widgets/CustomPopupMenu.dart';

class EditCustomBar extends StatelessWidget {
  const EditCustomBar(
      {super.key,
      required this.formkey,
      required this.note,
      required this.titleController,
      required this.subTitleController});
  final GlobalKey<FormState> formkey;
  final TextEditingController titleController;
  final TextEditingController subTitleController;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Row(children: [
      IconButton(
        icon: Icon(
          Icons.arrow_back_ios_new_outlined,
          size: FontSizeManager.font30,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      Text(
        TextManager.kCancel,
        style: TextStyle(
          fontFamily: FontFamilyManager.kOtamaFont,
          fontSize: FontSizeManager.font30,
        ),
      ),
      const Spacer(),
      CustomPopupMenu(
        note: note,
        formkey: formkey,
        titleController: titleController,
        subTitleController: subTitleController,
      ),
    ]);
  }
}
