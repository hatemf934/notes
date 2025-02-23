import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';

class ConfirmTitleButtonSheet extends StatelessWidget {
  const ConfirmTitleButtonSheet({super.key, required this.confirmdelete});
  final String confirmdelete;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Icon(
          Icons.error,
          color: Colors.red,
        ),
        Text(
          confirmdelete,
          style: TextStyle(
            fontSize: FontSizeManager.font25,
          ),
        ),
      ],
    );
  }
}
