import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';

class PopupMenuItemWithFeedback extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const PopupMenuItemWithFeedback({
    required this.text,
    required this.onPressed,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPressed();
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(8),
        child: Text(
          text,
          style: TextStyle(
            fontSize: FontSizeManager.font16,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
