import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/settings/core/text_settings_manager.dart';
import 'package:note_demo/settings/widget/setting_Popup_Menu.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static String id = RouteManager.kSettingsScreen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back,
              size: FontSizeManager.font30,
            )),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PaddingManager.pd24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TextManager.kNotesHome,
              style: TextStyle(
                  color: Colors.black.withOpacity(0.7),
                  fontFamily: FontFamilyManager.kNunitoFont,
                  fontSize: FontSizeManager.font40),
            ),
            SizedBox(
              height: HeightManager.h20,
            ),
            Text(
              TextSettingsManager.kStyle,
              style: TextStyle(color: Colors.grey.withOpacity(0.6)),
            ),
            SizedBox(
              height: HeightManager.h20,
            ),
            const RowStyleSetting(),
            SizedBox(
              height: HeightManager.h20,
            ),
            Divider(
              height: HeightManager.h30,
              thickness: 0.2,
              color: Colors.grey,
            ),
            SizedBox(
              height: HeightManager.h20,
            ),
            Text(
              TextSettingsManager.kLanguages,
              style: TextStyle(color: Colors.grey.withOpacity(0.6)),
            ),
            SizedBox(
              height: HeightManager.h20,
            ),
            SettingPopupMenu(
              minHeight: 50,
              minWidth: 200,
              itemBuilder: [
                PopupMenuItem(child: TextButtonPopItem(textpop: "Arabic")),
                PopupMenuItem(child: TextButtonPopItem(textpop: "English")),
              ],
              fontsize: TextSettingsManager.kLanguage,
              meduim: TextSettingsManager.kArabic,
            ),
          ],
        ),
      ),
    );
  }
}

class RowStyleSetting extends StatelessWidget {
  const RowStyleSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingPopupMenu(
          minHeight: 120,
          minWidth: 160,
          itemBuilder: [
            PopupMenuItem(child: Text("small")),
            PopupMenuItem(child: Text("data")),
            PopupMenuItem(child: Text("large")),
          ],
          fontsize: TextSettingsManager.kFontSize,
          meduim: TextSettingsManager.kMedium,
        ),
        SizedBox(
          height: HeightManager.h20,
        ),
        SettingPopupMenu(
          minHeight: 50,
          minWidth: 200,
          itemBuilder: [
            PopupMenuItem(child: TextButtonPopItem(textpop: "Grid view")),
            PopupMenuItem(child: TextButtonPopItem(textpop: "List view")),
          ],
          fontsize: TextSettingsManager.kLayout,
          meduim: TextSettingsManager.kGridView,
        ),
        SizedBox(
          height: HeightManager.h20,
        ),
        SettingPopupMenu(
          minHeight: 50,
          minWidth: 200,
          itemBuilder: [
            PopupMenuItem(child: TextButtonPopItem(textpop: "Dark")),
            PopupMenuItem(child: TextButtonPopItem(textpop: "Light")),
          ],
          fontsize: TextSettingsManager.kTheme,
          meduim: TextSettingsManager.kDark,
        )
      ],
    );
  }
}

class RowItemFontStyle extends StatelessWidget {
  const RowItemFontStyle({
    super.key,
    required this.fontsize,
    required this.medium,
  });
  final String fontsize;
  final String medium;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          fontsize,
          style: TextStyle(
              fontSize: FontSizeManager.font20,
              color: Colors.black.withOpacity(0.7)),
        ),
        const Spacer(),
        Text(medium,
            style: TextStyle(
                fontSize: FontSizeManager.font20,
                color: Colors.grey,
                fontFamily: FontFamilyManager.kNunitoFont)),
        Icon(Icons.arrow_upward_outlined, color: Colors.grey.withOpacity(0.6))
      ],
    );
  }
}

class TextButtonPopItem extends StatelessWidget {
  const TextButtonPopItem({super.key, required this.textpop});
  final String textpop;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text(
          textpop,
          style: TextStyle(
            fontSize: FontSizeManager.font16,
            color: Colors.black,
          ),
        ));
  }
}
