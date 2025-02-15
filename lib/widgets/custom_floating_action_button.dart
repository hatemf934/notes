import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16, bottom: 24),
      child: Container(
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(48), boxShadow: [
          BoxShadow(
            color: kSecondaryColor.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          )
        ]),
        height: 70,
        width: 70,
        child: FloatingActionButton(
          splashColor: kSecondaryColor,
          backgroundColor: kSecondaryColor,
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius:
                BorderRadius.circular(48), // Adjust the radius as needed
          ),
          child: const Icon(
            Icons.add,
            color: kPrimaryColor,
            size: 45,
          ),
        ),
      ),
    );
  }
}
