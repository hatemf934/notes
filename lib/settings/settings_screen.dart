import 'package:flutter/material.dart';
import 'package:notabli/core/utils/font_family_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/settings/core/text_settings_manager.dart';
import 'package:notabli/settings/widget/row_style_setting.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});
  static String id = RouteManager.kSettingsScreen;

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: PaddingManager.pd24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: HeightManager.h40),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back,
                size: FontSizeManager.font30,
              ),
            ),
            const SizedBox(height: HeightManager.h30),
            const Text(
              TextManager.kNotesHome,
              style: TextStyle(
                  fontFamily: FontFamilyManager.kNunitoFont,
                  fontSize: FontSizeManager.font40),
            ),
            const SizedBox(height: HeightManager.h20),
            Text(
              TextSettingsManager.kStyle,
              style: TextStyle(color: Colors.grey.withOpacity(0.6)),
            ),
            const SizedBox(height: HeightManager.h20),
            const RowStyleSetting(),
            const SizedBox(height: HeightManager.h20),
            const Divider(
              height: HeightManager.h30,
              thickness: 0.2,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }
}
