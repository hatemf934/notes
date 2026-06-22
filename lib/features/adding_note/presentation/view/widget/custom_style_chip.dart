import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';

class CustomStyleChip extends StatefulWidget {
  const CustomStyleChip({super.key, required this.label, this.style});
  final String label;
  // final String? fontKey;
  final TextStyle? style;

  @override
  State<CustomStyleChip> createState() => _CustomStyleChipState();
}

class _CustomStyleChipState extends State<CustomStyleChip> {
  String? selectedFont = 'Otama';

  @override
  Widget build(BuildContext context) {
    final isSelected = widget.label == selectedFont;
    return GestureDetector(
      onTap: () => setState(() => selectedFont = widget.label),
      child: Container(
        height: HeightManager.h55,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: ColorManager.colorChipBG,
          borderRadius: BorderRadius.circular(RadiusManager.rd12),
          border: isSelected
              ? Border.all(color: ColorManager.selectedChipColor, width: 1.5)
              : null,
        ),
        child: Text(
          widget.label,
          style: (widget.style ?? const TextStyle()).copyWith(
            color: ColorManager.greyColor100,
            fontSize: FontSizeManager.font16,
          ),
        ),
      ),
    );
  }
}
