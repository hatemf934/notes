import 'package:flutter/material.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/settings/core/text_settings_manager.dart';
import 'package:note_demo/settings/widget/Popup_Menu_Item_With_Feedback.dart';
import 'package:note_demo/settings/widget/row_style_setting.dart';
import 'package:note_demo/settings/widget/setting_Popup_Menu.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static String id = RouteManager.kSettingsScreen;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool isPressed = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PaddingManager.pd24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: HeightManager.h40),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: FontSizeManager.font30,
              ),
            ),
            SizedBox(height: HeightManager.h30),
            Text(
              TextManager.kNotesHome,
              style: TextStyle(
                  fontFamily: FontFamilyManager.kNunitoFont,
                  fontSize: FontSizeManager.font40),
            ),
            SizedBox(height: HeightManager.h20),
            Text(
              TextSettingsManager.kStyle,
              style: TextStyle(color: Colors.grey.withOpacity(0.6)),
            ),
            SizedBox(height: HeightManager.h20),
            const RowStyleSetting(),
            SizedBox(height: HeightManager.h20),
            Divider(
              height: HeightManager.h30,
              thickness: 0.2,
              color: Colors.grey,
            ),
            SizedBox(height: HeightManager.h20),
            Text(
              TextSettingsManager.kLanguages,
              style: TextStyle(color: Colors.grey.withOpacity(0.6)),
            ),
            SizedBox(height: HeightManager.h20),
            SettingPopupMenu(
              minHeight: 50,
              minWidth: 200,
              itemBuilder: [
                PopupMenuItem(
                    child: PopupMenuItemWithFeedback(
                  onPressed: () {},
                  text: TextSettingsManager.kArabic,
                )),
                PopupMenuItem(
                    child: PopupMenuItemWithFeedback(
                  onPressed: () {},
                  text: TextSettingsManager.kEnglish,
                )),
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
