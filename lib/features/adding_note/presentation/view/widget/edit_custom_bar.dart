import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notabli/core/helper/show_model_button.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/presentation/bloc/note_cubit/note_cubit.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_icon_button.dart';

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
          color: ColorManager.greyColor100,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      Text(
        TextManager.kCancel,
        style: Styles.styleOtamaFont.copyWith(fontSize: FontSizeManager.font30),
      ),
      const Spacer(),
      IconButtonCustom(
        onPressed: () {
          if (formkey.currentState != null &&
              formkey.currentState!.validate()) {
            note.title = titleController.text;
            note.subTitle = subTitleController.text;
            note.save();
            BlocProvider.of<NoteCubit>(context).getNote();
            Navigator.pop(context);
          } else {
            Navigator.pop(context);
            showModelButtonSheet(context);
          }
        },
      ),
    ]);
  }
}
