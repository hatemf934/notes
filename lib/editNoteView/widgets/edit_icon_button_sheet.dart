import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/buttonModelSheet/helper/show_model_button.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
import 'package:note_demo/editNoteView/helper/confirm_model_sheet.dart';
import 'package:note_demo/models/note_model.dart';

class EditIconButtonSheet extends StatelessWidget {
  const EditIconButtonSheet(
      {super.key,
      required this.formkey,
      required this.titleController,
      required this.subTitleController,
      required this.note});

  final GlobalKey<FormState> formkey;
  final TextEditingController titleController;
  final TextEditingController subTitleController;
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    confirmModelSheet(
                      onPressed: () {
                        if (formkey.currentState != null &&
                            formkey.currentState!.validate()) {
                          note.title = titleController.text;
                          note.subTitle = subTitleController.text;
                          note.save();
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.pop(context);
                          BlocProvider.of<DisplaynoteCubit>(context)
                              .displaynote();
                        } else {
                          Navigator.pop(context);
                          showModelButtonSheet(context);
                        }
                      },
                      context: context,
                      icondelete: TextManager.kIconSave,
                      confirmdelete: TextManager.kConfirmEdit,
                    );
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
        ),
        SizedBox(
          width: WidthManager.w50,
        ),
        Column(
          children: [
            IconButton(
                onPressed: () {
                  confirmModelSheet(
                    onPressed: () {
                      note.delete();
                      Navigator.pop(context);
                      Navigator.pop(context);
                      Navigator.pop(context);
                      BlocProvider.of<DisplaynoteCubit>(context).displaynote();
                    },
                    context: context,
                    icondelete: TextManager.kIconDelete,
                    confirmdelete: TextManager.kConfirmDelete,
                  );
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
