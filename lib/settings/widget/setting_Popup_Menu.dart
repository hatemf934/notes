import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/settings/settings_screen.dart';

class SettingPopupMenu extends StatelessWidget {
  const SettingPopupMenu(
      {super.key,
      required this.fontsize,
      required this.meduim,
      required this.itemBuilder,
      required this.minWidth,
      required this.minHeight});
  final String fontsize;
  final String meduim;
  final List<PopupMenuEntry<String>> itemBuilder;
  final double minWidth;
  final double minHeight;
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
        elevation: 5.0,
        color: kPrimaryColor,
        constraints: BoxConstraints(
          minWidth: minWidth,
          minHeight: minHeight,
        ),
        offset: const Offset(0.1, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusManager.rd12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
          child: RowItemFontStyle(
            fontsize: fontsize,
            medium: meduim,
          ),
        ),
        itemBuilder: (BuildContext context) {
          return itemBuilder;
        });
  }
}
