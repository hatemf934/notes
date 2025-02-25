import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
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
  final GlobalKey<FormState> formkey = GlobalKey();

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
    return GestureDetector(
      onTap: () {
        // إخفاء لوحة المفاتيح عند النقر خارج الـ TextField
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsets.only(
            left: PaddingManager.pd12,
            right: PaddingManager.pd12,
            top: PaddingManager.pd24,
          ),
          child: Form(
            key: formkey,
            child: ListView(children: [
              // SizedBox(height: HeightManager.h10),
              EditCustomBar(
                note: note,
                subTitleController: _subTitleController,
                titleController: _titleController,
                formkey: formkey,
              ),
              EditNoteFormView(
                note: note,
                titleController: _titleController,
                subTitleController: _subTitleController,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
