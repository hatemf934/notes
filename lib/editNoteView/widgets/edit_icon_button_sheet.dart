import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_demo/editNoteView/helper/confirm_model_sheet.dart';

class EditIconButtonSheet extends StatelessWidget {
  const EditIconButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                  confirmModelSheet(
                      context, TextManager.kIconSave, TextManager.kConfirmEdit);
                },
                icon: Icon(
                  Icons.edit_note_rounded,
                  color: kSecondaryColor,
                  size: FontSizeManager.font40,
                )),
            Text(
              TextManager.kEdit,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
        SizedBox(
          width: WidthManager.w50,
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {
                  confirmModelSheet(context, TextManager.kIconDelete,
                      TextManager.kConfirmDelete);
                },
                icon: Icon(
                  FontAwesomeIcons.trashCan,
                  color: Colors.red,
                  size: FontSizeManager.font35,
                )),
            Text(
              TextManager.kDelete,
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }
}
