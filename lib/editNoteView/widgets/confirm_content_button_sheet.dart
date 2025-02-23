import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/editNoteView/widgets/confirm_icon_button_sheet.dart';
import 'package:note_demo/editNoteView/widgets/confirm_title_button_sheet.dart';

class ConfirmContentButtonSheet extends StatelessWidget {
  const ConfirmContentButtonSheet(
      {super.key, required this.icondelete, required this.confirmdelete});
  final String icondelete;
  final String confirmdelete;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ConfirmTitleButtonSheet(
          confirmdelete: confirmdelete,
        ),
        Divider(
          height: HeightManager.h30,
          thickness: kthickness,
          color: Colors.grey,
        ),
        ConfirmIconButtonSheet(
          icondelete: icondelete,
        ),
      ],
    );
  }
}
