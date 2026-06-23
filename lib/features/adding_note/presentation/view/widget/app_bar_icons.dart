import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:notabli/core/helper/show_model_button.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/presentation/bloc/note_cubit/note_cubit.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_icon_button.dart';

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
    return IconButtonCustom(
      onPressed: () {
        if (formKey.currentState!.validate()) {
          formKey.currentState!.save();
          var formattedDate =
              DateFormat('MMMM dd, yyyy').format(DateTime.now());
          var notemodel = NoteModel(
            title: title,
            subTitle: subTitle,
            date: formattedDate,
          );
          BlocProvider.of<NoteCubit>(context).addNote(notemodel);
          BlocProvider.of<NoteCubit>(context).getNote();
          Navigator.pop(context);
        } else {
          showModelButtonSheet(context);
        }
      },
    );
  }
}
