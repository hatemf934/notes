import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/buttonModelSheet/helper/show_model_button.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
import 'package:note_demo/editNoteView/widgets/custom_text_icon.dart';
import 'package:note_demo/models/note_model.dart';

class CustomPopupMenu extends StatelessWidget {
  const CustomPopupMenu(
      {super.key,
      required this.note,
      required this.formkey,
      required this.titleController,
      required this.subTitleController});
  final NoteModel note;
  final GlobalKey<FormState> formkey;
  final TextEditingController titleController;
  final TextEditingController subTitleController;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      elevation: 5.0,
      iconSize: FontSizeManager.font35,
      constraints: BoxConstraints(
        minWidth: WidthManager.w120,
        minHeight: HeightManager.h100,
      ),
      offset: const Offset(0, -5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(RadiusManager.rd12),
      ),
      itemBuilder: (BuildContext context) {
        return [
          PopupMenuItem(
            child: CustomTextIcon(
              text: TextManager.kEdit,
              onPressed: () {
                if (formkey.currentState != null &&
                    formkey.currentState!.validate()) {
                  note.title = titleController.text;
                  note.subTitle = subTitleController.text;
                  note.save();
                  Navigator.pop(context);
                  Navigator.pop(context);
                  BlocProvider.of<DisplaynoteCubit>(context).displaynote();
                } else {
                  Navigator.pop(context);
                  showModelButtonSheet(context);
                }
              },
            ),
          ),
          PopupMenuItem(
            child: CustomTextIcon(
              text: TextManager.kDelete,
              onPressed: () {
                note.delete();
                Navigator.pop(context);
                Navigator.pop(context);
                BlocProvider.of<DisplaynoteCubit>(context).displaynote();
              },
            ),
          ),
        ];
      },
    );
  }
}
