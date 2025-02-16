import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';

class EmptyNotes extends StatelessWidget {
  const EmptyNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 130,
        ),
        Image.asset(
          kImage,
        ),
        const Text(
          "Create your first note !",
          style: TextStyle(
              fontFamily: "FiraSans",
              fontWeight: FontWeight.bold,
              fontSize: 20),
        )
      ],
    );
  }
}
