import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/constant.dart';
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
  String? title, subTitle;
  void onSave(String title, String subtitle) {
    setState(() {
      this.title = title;
      this.subTitle = subtitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotesCubit(),
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsets.only(
            left: PaddingManager.pd12,
            right: PaddingManager.pd12,
            top: PaddingManager.pd24,
          ),
          child: Column(
            children: [
              SizedBox(
                height: HeightManager.h30,
              ),
              CustomAppBar(
                title: title ?? "",
                subTitle: subTitle ?? "",
                formKey: formkey,
              ),
              NoteFromView(
                onSave: onSave,
                formKey: formkey,
              )
            ],
          ),
        ),
      ),
    );
  }
}
