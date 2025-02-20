import 'package:flutter/material.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/buttonModelSheet/widget/content_button_sheet.dart';

void showModelButtonSheet(BuildContext context) {
  showModalBottomSheet(
      isScrollControlled: true,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(RadiusManager.rd20),
            topRight: Radius.circular(RadiusManager.rd20)),
      ),
      context: context,
      builder: (context) {
        return Padding(
          padding: EdgeInsets.only(
            top: PaddingManager.pd8,
            right: PaddingManager.pd8,
            bottom: PaddingManager.pd16,
            left: PaddingManager.pd8,
          ),
          child: Container(
              height: MediaQuery.of(context).size.height * 0.2,
              child: const ContentShowModel()),
        );
      });
}
