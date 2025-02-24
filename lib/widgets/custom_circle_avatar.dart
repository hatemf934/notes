import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/views/home_screen.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, HomeScreen.id).then((_) {
          // إخفاء لوحة المفاتيح بعد الانتقال
          FocusScope.of(context).unfocus();
        });
      },
      child: CircleAvatar(
        radius: RadiusManager.rd35,
        backgroundColor: kSecondaryColor,
        child: const Center(
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
