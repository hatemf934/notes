import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/cubits/add_note_cubit/add_notes_cubit.dart';
import 'package:note_demo/widgets/app_bar.dart';
import 'package:note_demo/widgets/note_form_view.dart';

class ShowNoteScreen extends StatefulWidget {
  const ShowNoteScreen({super.key});
  static String id = RouteManager.kShowscreen;

  @override
  State<ShowNoteScreen> createState() => _ShowNoteScreenState();
}

class _ShowNoteScreenState extends State<ShowNoteScreen> {
  final GlobalKey<FormState> formkey = GlobalKey();
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _subTitleController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _titleController.addListener(_updateAppBar);
    _subTitleController.addListener(_updateAppBar);
  }

  @override
  void dispose() {
    _titleController.removeListener(_updateAppBar);
    _subTitleController.removeListener(_updateAppBar);
    _titleController.dispose();
    _subTitleController.dispose();
    super.dispose();
  }

  void _updateAppBar() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: GestureDetector(
        onTap: () {
          // إخفاء لوحة المفاتيح عند النقر خارج الـ TextField
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
          body: Padding(
            padding: EdgeInsets.only(
              left: PaddingManager.pd12,
              right: PaddingManager.pd12,
              top: PaddingManager.pd24,
            ),
            child: ListView(
              children: [
                SizedBox(
                  height: HeightManager.h10,
                ),
                CustomAppBar(
                  title: _titleController.text,
                  subTitle: _subTitleController.text,
                  formKey: formkey,
                ),
                NoteFromView(
                  formKey: formkey,
                  titleController: _titleController,
                  subTitleController: _subTitleController,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
