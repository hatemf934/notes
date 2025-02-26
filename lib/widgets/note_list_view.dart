import 'package:flutter/material.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/models/note_model.dart';
import 'package:note_demo/widgets/content_list_view.dart';

class NoteListView extends StatelessWidget {
  const NoteListView({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, RouteManager.kEditNote, arguments: note);
      },
      child: Container(
          padding: EdgeInsets.only(
            top: PaddingManager.pd12,
            bottom: PaddingManager.pd12,
            left: PaddingManager.pd16,
            right: PaddingManager.pd16,
          ),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(RadiusManager.rd16),
          ),
          child: ContentListView(
            noteModel: note,
          )),
    );
  }
}
