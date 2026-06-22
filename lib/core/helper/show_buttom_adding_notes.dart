import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/body_button_aheet_adding_notes.dart';

void showButtomAddingNotes(BuildContext context) async {
  showModalBottomSheet(
    isScrollControlled: true,
    context: context,
    backgroundColor: ColorManager.primaryColor,
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(RadiusManager.rd20),
      ),
    ),
    builder: (BuildContext context) {
      final size = MediaQuery.of(context).size;
      final viewInsets = MediaQuery.of(context).viewInsets;
      return SizedBox(
        height: size.height * 0.48 + viewInsets.bottom,
        width: double.infinity,
        child: const BodyOfButtonSheetAddingNotes(),
      );
    },
  );
}
