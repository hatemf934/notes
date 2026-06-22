import 'package:flutter/material.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/color_circle.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/custom_drag_handle.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/custom_font_and_style_text_section.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/heading_button.dart';

class BodyOfButtonSheetAddingNotes extends StatefulWidget {
  const BodyOfButtonSheetAddingNotes({super.key});

  @override
  State<BodyOfButtonSheetAddingNotes> createState() =>
      _BodyOfButtonSheetAddingNotesState();
}

class _BodyOfButtonSheetAddingNotesState
    extends State<BodyOfButtonSheetAddingNotes> {
  int selectedColorIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(PaddingManager.pd12),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: HeightManager.h10),
          const CustomDragHandle(
              widthDrag1: WidthManager.w40, widthDrag2: WidthManager.w30),
          const SizedBox(height: HeightManager.h20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              headingButton(label: 'H1', onTap: () {}),
              headingButton(label: 'H2', onTap: () {}),
              headingButton(label: 'H3', onTap: () {}),
            ],
          ),
          const SizedBox(height: HeightManager.h10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: List.generate(
                colors.length,
                (i) => colorCircle(
                    colors: colors,
                    index: i,
                    onTap: () => setState(() => selectedColorIndex = i),
                    selectedColorIndex: selectedColorIndex)),
          ),
          const SizedBox(height: HeightManager.h30),
          const CustomFontAndStyleTextSection()
        ],
      ),
    );
  }
}
