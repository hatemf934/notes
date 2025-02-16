import 'package:flutter/material.dart';
import 'package:note_demo/widgets/app_bar_icons.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_outlined,
            size: 30,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),

        const Text(
          "Back",
          style: TextStyle(
            fontFamily: "FiraSans",
            fontSize: 35,
          ),
        ), // عنوان الشاشة
        const Spacer(),
        const AppBarIcons(),
      ],
    );
  }
}
