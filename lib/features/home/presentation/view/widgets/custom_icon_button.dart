import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';

class IconButtonCustom extends StatelessWidget {
  const IconButtonCustom({super.key, this.onPressed});
  final Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: RadiusManager.rd16),
      child: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Icons.check_circle_outline_rounded,
            size: FontSizeManager.font35,
          )),
    );
  }
}
