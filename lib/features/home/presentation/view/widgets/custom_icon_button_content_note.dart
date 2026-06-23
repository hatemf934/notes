import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';

class CustomIconButtonContentNote extends StatelessWidget {
  const CustomIconButtonContentNote({
    super.key,
    required this.onPressed,
    required this.iconData,
    required this.sizeIcon,
  });
  final VoidCallback onPressed;
  final IconData iconData;
  final double sizeIcon;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Icon(
        iconData,
        size: sizeIcon,
        color: ColorManager.colorgrey,
      ),
    );
  }
}
