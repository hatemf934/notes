import 'package:flutter/material.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/views/home_screen.dart';

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
      child: const CircleAvatar(
        radius: RadiusManager.rd35,
        backgroundColor: kSecondaryColor,
        child: Center(
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}
