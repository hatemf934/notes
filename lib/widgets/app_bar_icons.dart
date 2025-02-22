import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/buttonModelSheet/helper/show_model_button.dart';
import 'package:note_demo/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
import 'package:note_demo/models/note_model.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({
    super.key,
    required this.formKey,
    required this.title,
    required this.subTitle,
  });

  final GlobalKey<FormState> formKey;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: RadiusManager.rd16),
      child: Container(
        height: HeightManager.h40,
        width: WidthManager.w40,
        decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(RadiusManager.rd12)),
        child: IconButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();

                print("Title: $title, Subtitle: $subTitle");

                var formattedDate =
                    DateFormat('MMMM dd, yyyy').format(DateTime.now());
                var notemodel = NoteModel(
                  title: title,
                  subTitle: subTitle,
                  date: formattedDate,
                  color: Colors.blue.value,
                );
                BlocProvider.of<AddNotesCubit>(context)
                    .addNotesCubit(notemodel);
                BlocProvider.of<DisplaynoteCubit>(context).displaynote();
              } else {
                showModelButtonSheet(context);
              }
            },
            icon: const Icon(
              Icons.check_circle_outline_rounded,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
