import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/cubits/themecubit/themecubit_cubit.dart';
import 'package:note_demo/settings/core/text_settings_manager.dart';
import 'package:note_demo/settings/widget/setting_Popup_Menu.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});
  static String id = RouteManager.kSettingsScreen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: PaddingManager.pd24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: HeightManager.h30,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(
                Icons.arrow_back,
                size: FontSizeManager.font30,
              ),
            ),
            SizedBox(
              height: HeightManager.h30,
            ),
            Text(
              TextManager.kNotesHome,
              style: TextStyle(
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
            PopupMenuItem(child: TextButtonPopItem(textpop: "Small")),
            PopupMenuItem(child: TextButtonPopItem(textpop: "Medium")),
            PopupMenuItem(child: TextButtonPopItem(textpop: "Large")),
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
            PopupMenuItem(
                child: TextButtonPopItem(
              onPressed: () {
                BlocProvider.of<ThemeCubit>(context).changedarkTheme();
                Navigator.pop(context);
              },
              textpop: "Dark",
            )),
            PopupMenuItem(
              child: TextButtonPopItem(
                  onPressed: () {
                    BlocProvider.of<ThemeCubit>(context).changelightTheme();
                    Navigator.pop(context);
                  },
                  textpop: "Light"),
            ),
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
          ),
        ),
        const Spacer(),
        Text(medium,
            style: TextStyle(
                fontSize: FontSizeManager.font20,
                fontFamily: FontFamilyManager.kNunitoFont)),
        Icon(Icons.arrow_upward_outlined, color: Colors.grey.withOpacity(0.6))
      ],
    );
  }
}

class TextButtonPopItem extends StatelessWidget {
  const TextButtonPopItem({super.key, required this.textpop, this.onPressed});
  final String textpop;
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: Text(
          textpop,
          style: TextStyle(
            fontSize: FontSizeManager.font16,
            color: Colors.grey,
          ),
        ));
  }
}
