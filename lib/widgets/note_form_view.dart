import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_demo/widgets/text_field_custom.dart';

class NoteFromView extends StatefulWidget {
  const NoteFromView({super.key, required this.formKey, required this.onSave});
  final GlobalKey<FormState> formKey;
  final Function(String title, String subTitle) onSave;
  @override
  State<NoteFromView> createState() => _NoteFromViewState();
}

class _NoteFromViewState extends State<NoteFromView> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: BlocConsumer<AddNotesCubit, AddNotesState>(
        listener: (context, state) {
          if (state is NotesSuccess) {
            Navigator.pop(context);
          }
          if (state is NotesFailure) {
            Center(
              child: Text(state.errormessage),
            );
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is NotesLoading ? true : false,
            child: Column(
              children: [
                TextFieldCustom(
                  onsave: (value) {
                    title = value;
                  },
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return null;
                    } else {
                      return null;
                    }
                  },
                  fontsize: 35,
                  text: TextManager.kTitle,
                  maxlines: 1,
                  size: FontSizeManager.font45,
                ),
                TextFieldCustom(
                  onsave: (value) {
                    subTitle = value;
                  },
                  validator: (value) {
                    if (value == null || value.trim().isEmpty) {
                      return "null";
                    } else {
                      return null;
                    }
                  },
                  fontsize: 23,
                  text: TextManager.kSubTitle,
                  maxlines: 10,
                  size: FontSizeManager.font20,
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
