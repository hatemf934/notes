import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/editNoteView/widgets/edit_icon_button_sheet.dart';
import 'package:note_demo/editNoteView/widgets/edit_title_button_sheet.dart';

class EditContentButtonSheet extends StatelessWidget {
  const EditContentButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const EditTitleButtonSheet(),
        Divider(
          height: HeightManager.h30,
          thickness: kthickness,
          color: Colors.grey,
        ),
        const EditIconButtonSheet(),
      ],
    );
  }
}
