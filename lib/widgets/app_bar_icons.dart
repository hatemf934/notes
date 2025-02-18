import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: RadiusManager.rd16),
      child: Container(
        height: HeightManager.h40,
        width: WidthManager.w40,
        decoration: BoxDecoration(
            color: kSecondaryColor, borderRadius: BorderRadius.circular(12)),
        child: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.check_circle_outline_rounded,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
