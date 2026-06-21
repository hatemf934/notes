import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
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
        padding: const EdgeInsets.symmetric(
          horizontal: PaddingManager.pd16,
          vertical: PaddingManager.pd12,
        ),
        decoration: BoxDecoration(
          color: ColorManager.primaryColor,
          borderRadius: BorderRadius.circular(RadiusManager.rd16),
        ),
        child: ContentNoteTips(
          noteModel: note,
        ),
      ),
    );
  }
}
