import 'package:flutter/material.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/models/note_model.dart';
import 'package:notabli/widgets/content_list_view.dart';

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
          padding: const EdgeInsets.only(
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
