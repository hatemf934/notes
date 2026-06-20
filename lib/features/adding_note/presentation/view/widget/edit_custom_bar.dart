import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notabli/core/helper/show_model_button.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/cubits/displayNote/displaynote_cubit.dart';
import 'package:notabli/core/models/note_model.dart';
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
        icon: const Icon(
          Icons.arrow_back_ios_new_outlined,
          size: FontSizeManager.font30,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      const Text(
        TextManager.kCancel,
        style: TextStyle(
          fontFamily: FontFamilyManager.kOtamaFont,
          fontSize: FontSizeManager.font30,
        ),
      ),
      const Spacer(),
      IconButtonCustom(
        onPressed: () {
          if (formkey.currentState != null &&
              formkey.currentState!.validate()) {
            note.title = titleController.text;
            note.subTitle = subTitleController.text;
            note.save();
            Navigator.pop(context);
            BlocProvider.of<DisplaynoteCubit>(context).displaynote();
          } else {
            Navigator.pop(context);
            showModelButtonSheet(context);
          }
        },
      ),
    ]);
  }
}
