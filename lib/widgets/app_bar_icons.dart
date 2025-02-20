import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/buttonModelSheet/helper/show_model_button.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: RadiusManager.rd16),
      child: Container(
        height: HeightManager.h40,
        width: WidthManager.w40,
        decoration: BoxDecoration(
            color: kSecondaryColor,
            borderRadius: BorderRadius.circular(RadiusManager.rd12)),
        child: IconButton(
            onPressed: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
                Navigator.pop(context);
              } else {
                showModelButtonSheet(context);
              }
            },
            icon: const Icon(
              Icons.check_circle_outline_rounded,
              color: kPrimaryColor,
            )),
      ),
    );
  }
}
