import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/cubits/themetextcubit/themetext_cubit.dart';
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
    return BlocBuilder<ThemetextCubit, ThemeTextCubitState>(
      builder: (context, state) {
        TextStyle currentTextStyle;
        switch (state) {
          case ThemeTextCubitState.Small:
            currentTextStyle = TextStyle(
              fontSize: FontSizeManager.font16,
              fontFamily: FontFamilyManager.kNunitoFont,
            );
            break;
          case ThemeTextCubitState.Medium:
            currentTextStyle = TextStyle(
              fontSize: FontSizeManager.font20,
              fontFamily: FontFamilyManager.kNunitoFont,
            );
            break;
          case ThemeTextCubitState.Large:
            currentTextStyle = TextStyle(
              fontSize: FontSizeManager.font30,
              fontFamily: FontFamilyManager.kNunitoFont,
            );
            break;
          default:
            currentTextStyle = const TextStyle();
        }
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
                style: TextStyle(
                    fontSize: FontSizeManager.font30,
                    fontFamily: FontFamilyManager.kNunitoFont),
                maxlines: 1,
                size: FontSizeManager.font35,
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
                style: currentTextStyle,
                maxlines: null,
                size: FontSizeManager.font23,
              )
            ],
          ),
        );
      },
    );
  }
}
