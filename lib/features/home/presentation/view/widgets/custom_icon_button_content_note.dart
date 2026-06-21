import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';

class CustomIconButtonContentNote extends StatelessWidget {
  const CustomIconButtonContentNote({
    super.key,
    required this.onPressed,
    required this.iconData,
  });
  final VoidCallback onPressed;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onPressed,
        icon: Icon(
          iconData,
          size: FontSizeManager.font16,
          color: Colors.grey,
        ));
  }
}
