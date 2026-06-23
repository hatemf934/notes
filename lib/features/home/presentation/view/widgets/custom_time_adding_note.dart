import 'package:flutter/material.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/styles.dart';
import 'package:notabli/core/utils/width_manager.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:timeago/timeago.dart' as timeago;

class CustomTimeAddingNote extends StatelessWidget {
  const CustomTimeAddingNote(
      {super.key, required this.textSize, required this.noteModel});
  final double textSize;
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: Stream.periodic(const Duration(seconds: 60)),
        builder: (context, asyncSnapshot) {
          bool isJustNow =
              DateTime.now().difference(noteModel.dateTime).inSeconds < 60;
          return Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              isJustNow
                  ? Container(
                      height: HeightManager.h8,
                      width: WidthManager.w8,
                      decoration: const BoxDecoration(
                          color: ColorManager.colorGreen,
                          shape: BoxShape.circle),
                    )
                  : const SizedBox.shrink(),
              const SizedBox(width: WidthManager.w5),
              Text(
                timeago.format(noteModel.dateTime, locale: kLocalTimeMessage),
                style: Styles.styleInterFontgrey.copyWith(fontSize: textSize),
              ),
            ],
          );
        });
  }
}
