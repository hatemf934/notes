import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/widgets/app_bar.dart';
import 'package:note_demo/widgets/text_field_custom.dart';

class ShowNoteScreen extends StatelessWidget {
  const ShowNoteScreen({super.key});
  static String id = "showscreen";
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.only(left: 12, right: 12, top: 24),
        child: Column(
          children: [
            CustomAppBar(),
            TextFieldCustom(
              text: "Title",
              maxlines: 1,
              size: 40,
            ),
            TextFieldCustom(
              text: "Type something...",
              maxlines: 10,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
