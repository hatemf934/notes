import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/text_field_custom.dart';

class CustomBlocBuilderNoteFormView extends StatelessWidget {
  const CustomBlocBuilderNoteFormView(
      {super.key,
      required this.titleController,
      required this.subTitleController,
      required this.title,
      required this.subtitle,
      this.autoFocus = false});
  final TextEditingController titleController;
  final TextEditingController subTitleController;
  final String title;
  final String subtitle;
  final bool autoFocus;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TextFieldCustom(
            autofocus: autoFocus,
            controller: titleController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            text: title,
            style: Styles.styleNunitoFont
                .copyWith(fontSize: FontSizeManager.font30),
            maxlines: 1,
            size: FontSizeManager.font45,
          ),
          TextFieldCustom(
            autofocus: autoFocus,
            controller: subTitleController,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return " ";
              } else {
                return null;
              }
            },
            text: subtitle,
            style: Styles.styleNunitoFont
                .copyWith(fontSize: FontSizeManager.font25),
            maxlines: null,
            size: FontSizeManager.font23,
          )
        ],
      ),
    );
  }
}
