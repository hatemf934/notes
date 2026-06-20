import 'package:flutter/material.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/core/models/note_model.dart';
import 'package:notabli/features/home/presentation/view/widgets/content_note_item.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
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
          bottom: PaddingManager.pd8,
          left: PaddingManager.pd16,
          right: PaddingManager.pd16,
        ),
        decoration: BoxDecoration(
          color: Color(note.color),
          borderRadius: BorderRadius.circular(RadiusManager.rd16),
        ),
        child: ContentNoteTips(
          noteModel: note,
        ),
      ),
    );
  }
}
