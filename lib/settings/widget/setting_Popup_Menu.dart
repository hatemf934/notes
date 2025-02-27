import 'package:flutter/material.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/settings/widget/row_item_style.dart';

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
        constraints: BoxConstraints(
          minWidth: minWidth,
          minHeight: minHeight,
        ),
        offset: const Offset(0.1, 50),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(RadiusManager.rd12),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: PaddingManager.pd8, vertical: PaddingManager.pd16),
          child: RowItemStyle(
            fontsize: fontsize,
            medium: meduim,
          ),
        ),
        itemBuilder: (BuildContext context) {
          return itemBuilder;
        });
  }
}
