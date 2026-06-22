import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/custom_bloc_builder_note_form_view.dart';

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
            child: CustomBlocBuilderNoteFormView(
                titleController: widget.titleController,
                subTitleController: widget.subTitleController,
                title: TextManager.kTitle,
                subtitle: TextManager.kSubTitle),
          );
        },
      ),
    );
  }
}
