import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';

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
              icon: const Icon(
                Icons.check_circle_outline_rounded,
                size: FontSizeManager.font40,
              )),
          const SizedBox(
            height: HeightManager.h20,
          ),
          const Row(
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
