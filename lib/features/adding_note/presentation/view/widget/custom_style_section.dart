import 'package:flutter/material.dart';
import 'package:notabli/core/utils/width_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/widget/custom_style_chip.dart';

class CustomStylesSection extends StatelessWidget {
  const CustomStylesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomStyleChip(
            label: 'Bold',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(width: WidthManager.w8),
        Expanded(
          child: CustomStyleChip(
            label: 'Underline',
            style: TextStyle(decoration: TextDecoration.underline),
          ),
        ),
        SizedBox(width: WidthManager.w8),
        Expanded(
          child: CustomStyleChip(
            label: 'Italian',
            style: TextStyle(fontStyle: FontStyle.italic),
          ),
        ),
      ],
    );
  }
}
