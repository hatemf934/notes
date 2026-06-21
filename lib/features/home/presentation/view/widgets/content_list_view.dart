import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/models/note_model.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/features/home/presentation/view/widgets/buttons_content_note.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_time_adding_note.dart';

class ContentListView extends StatelessWidget {
  const ContentListView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ButtonsContentNote(noteModel: noteModel),
        Text(noteModel.title, style: Styles.styleInterFont30),
        const SizedBox(height: HeightManager.h10),
        Text(
            maxLines: 6,
            overflow: TextOverflow.ellipsis,
            noteModel.subTitle,
            style: Styles.styleInterFontgrey
                .copyWith(fontSize: FontSizeManager.font20)),
        const SizedBox(height: HeightManager.h10),
        const CustomTimeAddingNote(),
      ],
    );
  }
}
