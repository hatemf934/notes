import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_demo/cubits/themetextcubit/themetext_cubit.dart';
import 'package:note_demo/widgets/text_field_custom.dart';

class NoteFromView extends StatefulWidget {
  const NoteFromView({
    super.key,
    this.formKey,
    required this.titleController,
    required this.subTitleController,
  });
  final GlobalKey<FormState>? formKey;

  final TextEditingController titleController;
  final TextEditingController subTitleController;

  @override
  State<NoteFromView> createState() => _NoteFromViewState();
}

class _NoteFromViewState extends State<NoteFromView> {
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
            child: BlocBuilder<ThemetextCubit, ThemeTextCubitState>(
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
                        autofocus: true,
                        controller: widget.titleController,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return " ";
                          } else {
                            return null;
                          }
                        },
                        style: TextStyle(
                            fontSize: FontSizeManager.font30,
                            fontFamily: FontFamilyManager.kNunitoFont),
                        text: TextManager.kTitle,
                        maxlines: 1,
                        size: FontSizeManager.font45,
                      ),
                      TextFieldCustom(
                        autofocus: true,
                        controller: widget.subTitleController,
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return " ";
                          } else {
                            return null;
                          }
                        },
                        style: currentTextStyle,
                        text: TextManager.kSubTitle,
                        maxlines: null,
                        size: FontSizeManager.font20,
                      )
                    ],
                  ),
                );
              },
            ),
          );
        },
      ),
    );
  }
}
