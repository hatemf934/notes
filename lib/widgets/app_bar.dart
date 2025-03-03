import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/widgets/app_bar_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    super.key,
    this.formKey,
    required this.title,
    required this.subTitle,
  });

  final GlobalKey<FormState>? formKey;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new_outlined,
            size: FontSizeManager.font30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        const Spacer(),
        AppBarIcons(
          title: title,
          subTitle: subTitle,
          formKey: formKey!,
        ),
      ],
    );
  }
}
