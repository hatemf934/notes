import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notabli/core/cubits/themetextcubit/themetext_cubit.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
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
    return BlocBuilder<ThemetextCubit, ThemeTextCubitState>(
      builder: (context, state) {
        TextStyle currentTextStyle;
        switch (state) {
          case ThemeTextCubitState.small:
            currentTextStyle = Styles.styleNunitoFont
                .copyWith(fontSize: FontSizeManager.font16);
            break;
          case ThemeTextCubitState.medium:
            currentTextStyle = Styles.styleNunitoFont
                .copyWith(fontSize: FontSizeManager.font20);
            break;
          case ThemeTextCubitState.large:
            currentTextStyle = Styles.styleNunitoFont
                .copyWith(fontSize: FontSizeManager.font25);
            break;
        }
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
                style: TextStyle(
                  fontSize: FontSizeManager.font30,
                  fontFamily: FontFamilyManager.kNunitoFont,
                  color: ColorManager.greyColor100,
                ),
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
