import 'package:flutter/material.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/core/models/note_model.dart';
import 'package:notabli/features/home/presentation/view/widgets/content_list_view.dart';

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
          padding: const EdgeInsets.symmetric(
              horizontal: PaddingManager.pd16, vertical: PaddingManager.pd12),
          decoration: BoxDecoration(
            color: const Color(0xff1f1f1f),
            borderRadius: BorderRadius.circular(RadiusManager.rd12),
          ),
          child: ContentListView(
            noteModel: note,
          )),
    );
  }
}
