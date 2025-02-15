import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';

class AppBarIcons extends StatelessWidget {
  const AppBarIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
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
