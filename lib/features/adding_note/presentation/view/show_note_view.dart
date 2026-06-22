import 'package:flutter/material.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/edit_custom_bar.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/edit_note_form_view.dart';
import 'package:notabli/core/models/note_model.dart';

class ShowNoteView extends StatefulWidget {
  const ShowNoteView({super.key, required this.noteModel});
  static String id = RouteManager.kEditNote;
  final NoteModel noteModel;

  @override
  State<ShowNoteView> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<ShowNoteView> {
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey();

  @override
  void initState() {
    super.initState();
    titleController.text = widget.noteModel.title;
    subTitleController.text = widget.noteModel.subTitle;
  }

  @override
  void dispose() {
    titleController.dispose();
    subTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: PaddingManager.pd24,
            horizontal: PaddingManager.pd12,
          ),
          child: Form(
            key: formkey,
            child: ListView(children: [
              EditCustomBar(
                note: widget.noteModel,
                subTitleController: subTitleController,
                titleController: titleController,
                formkey: formkey,
              ),
              EditNoteFormView(
                note: widget.noteModel,
                titleController: titleController,
                subTitleController: subTitleController,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
