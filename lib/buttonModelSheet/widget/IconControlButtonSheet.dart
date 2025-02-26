import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/text_manager.dart';

class IconControlButtonSheet extends StatelessWidget {
  const IconControlButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(
                Icons.check_circle_outline_rounded,
                size: FontSizeManager.font40,
              )),
          SizedBox(
            height: HeightManager.h20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: WidthManager.w8),
              Text(
                TextManager.kOk,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: FontSizeManager.font20,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
