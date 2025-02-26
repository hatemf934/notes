import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/padding_manager.dart';

class IconButtonCustom extends StatelessWidget {
  const IconButtonCustom({super.key, this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: RadiusManager.rd16),
      child: IconButton(
          onPressed: onPressed,
          icon: Icon(
            Icons.check_circle_outline_rounded,
            size: FontSizeManager.font35,
          )),
    );
  }
}
