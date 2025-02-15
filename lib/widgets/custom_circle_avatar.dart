import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/views/home_screen.dart';

class CustomCircleAvatar extends StatelessWidget {
  const CustomCircleAvatar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, HomeScreen.id);
      },
      child: const CircleAvatar(
        radius: 35,
        backgroundColor: kSecondaryColor,
        child: Center(
          child: Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
