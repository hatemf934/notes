import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';

class RowItemStyle extends StatelessWidget {
  const RowItemStyle({
    super.key,
    required this.fontsize,
    required this.medium,
  });
  final String fontsize;
  final String medium;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          fontsize,
          style: const TextStyle(
            fontSize: FontSizeManager.font20,
          ),
        ),
        const Spacer(),
        Text(medium,
            style: const TextStyle(
                fontSize: FontSizeManager.font20,
                fontFamily: FontFamilyManager.kNunitoFont)),
        Icon(Icons.keyboard_double_arrow_down,
            color: Colors.grey.withOpacity(0.6))
      ],
    );
  }
}
