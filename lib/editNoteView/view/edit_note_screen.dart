import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/editNoteView/widgets/edit_custom_bar.dart';
import 'package:note_demo/editNoteView/widgets/edit_note_form_view.dart';
import 'package:note_demo/models/note_model.dart';

class EditNoteScreen extends StatefulWidget {
  const EditNoteScreen({super.key});
  static String id = RouteManager.kEditNote;

  @override
  State<EditNoteScreen> createState() => _EditNoteScreenState();
}

class _EditNoteScreenState extends State<EditNoteScreen> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _subTitleController = TextEditingController();

  @override
  void initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final NoteModel note =
          ModalRoute.of(context)!.settings.arguments as NoteModel;
      _titleController.text = note.title;
      _subTitleController.text = note.subTitle;
    });
  }

  @override
  void dispose() {
    _titleController.dispose();
    _subTitleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final NoteModel note =
        ModalRoute.of(context)!.settings.arguments as NoteModel;
    final GlobalKey<FormState> formkey = GlobalKey();
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.only(
          left: PaddingManager.pd12,
          right: PaddingManager.pd12,
          top: PaddingManager.pd24,
        ),
        child: Form(
          key: formkey,
          child: Column(children: [
            SizedBox(height: HeightManager.h30),
            EditCustomBar(
              note: note,
              subTitleController: _subTitleController,
              titleController: _titleController,
              formkey: formkey,
            ),
            EditNoteFormView(
              titleController: _titleController,
              subTitleController: _subTitleController,
              note: note,
            ),
          ]),
        ),
      ),
    );
  }
}
