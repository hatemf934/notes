import 'package:flutter/material.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/app_bar.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/note_form_view.dart';

class NoteView extends StatefulWidget {
  const NoteView({super.key});
  static String id = RouteManager.kShowscreen;

  @override
  State<NoteView> createState() => _ShowNoteScreenState();
}

class _ShowNoteScreenState extends State<NoteView> {
  final GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController subTitleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.addListener(_updateAppBar);
    subTitleController.addListener(_updateAppBar);
  }

  @override
  void dispose() {
    titleController.removeListener(_updateAppBar);
    subTitleController.removeListener(_updateAppBar);
    titleController.dispose();
    subTitleController.dispose();
    super.dispose();
  }

  void _updateAppBar() {
    setState(() {});
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
          child: ListView(
            children: [
              const SizedBox(height: HeightManager.h10),
              CustomAppBar(
                title: titleController.text,
                subTitle: subTitleController.text,
                formKey: formkey,
              ),
              NoteFromView(
                formKey: formkey,
                titleController: titleController,
                subTitleController: subTitleController,
              )
            ],
          ),
        ),
      ),
    );
  }
}
