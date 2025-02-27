import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';

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
          style: TextStyle(
            fontSize: FontSizeManager.font20,
          ),
        ),
        const Spacer(),
        Text(medium,
            style: TextStyle(
                fontSize: FontSizeManager.font20,
                fontFamily: FontFamilyManager.kNunitoFont)),
        Icon(Icons.keyboard_double_arrow_down,
            color: Colors.grey.withOpacity(0.6))
      ],
    );
  }
}
