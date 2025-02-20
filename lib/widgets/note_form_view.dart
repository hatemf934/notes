import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/widgets/text_field_custom.dart';

class NoteFromView extends StatefulWidget {
  const NoteFromView({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;
  @override
  State<NoteFromView> createState() => _NoteFromViewState();
}

class _NoteFromViewState extends State<NoteFromView> {
  String? title, subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formKey,
      child: Column(
        children: [
          TextFieldCustom(
            onsave: (value) {
              title = value;
            },
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return null;
              } else {
                return null;
              }
            },
            text: TextManager.kTitle,
            maxlines: 1,
            size: FontSizeManager.font45,
          ),
          TextFieldCustom(
            onsave: (value) {
              subTitle = value;
            },
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return "null";
              } else {
                return null;
              }
            },
            text: TextManager.kSubTitle,
            maxlines: 10,
            size: FontSizeManager.font20,
          )
        ],
      ),
    );
  }
}
