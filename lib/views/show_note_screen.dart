import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/widgets/app_bar.dart';
import 'package:note_demo/widgets/text_field_custom.dart';

class ShowNoteScreen extends StatelessWidget {
  const ShowNoteScreen({super.key});
  static String id = RouteManager.kShowscreen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: EdgeInsets.only(
          left: PaddingManager.pd12,
          right: PaddingManager.pd12,
          top: PaddingManager.pd24,
        ),
        child: Column(
          children: [
            SizedBox(
              height: HeightManager.h30,
            ),
            const CustomAppBar(),
            TextFieldCustom(
              text: TextManager.kTitle,
              maxlines: 1,
              size: FontSizeManager.font45,
            ),
            TextFieldCustom(
              text: TextManager.kSubTitle,
              maxlines: 10,
              size: FontSizeManager.font20,
            ),
          ],
        ),
      ),
    );
  }
}
