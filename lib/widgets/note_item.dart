import 'package:flutter/material.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/models/note_model.dart';
import 'package:note_demo/widgets/content_note_item.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: EdgeInsets.only(
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
