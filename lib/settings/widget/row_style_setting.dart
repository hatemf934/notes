import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/cubits/layout_cubit/layoutcubit_cubit.dart';
import 'package:note_demo/cubits/themecubit/themecubit_cubit.dart';
import 'package:note_demo/cubits/themetextcubit/themetext_cubit.dart';
import 'package:note_demo/settings/core/text_settings_manager.dart';
import 'package:note_demo/settings/widget/setting_Popup_Menu.dart';
import 'package:note_demo/settings/widget/text_button_pop_item.dart';

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
            PopupMenuItem(
                child: TextButtonPopItem(
                    onPressed: () {
                      BlocProvider.of<ThemetextCubit>(context)
                          .changeSmallText();
                      Navigator.pop(context);
                    },
                    textpop: TextSettingsManager.kSmall)),
            PopupMenuItem(
                child: TextButtonPopItem(
                    onPressed: () {
                      BlocProvider.of<ThemetextCubit>(context)
                          .changeMediumText();
                      Navigator.pop(context);
                    },
                    textpop: TextSettingsManager.kMedium)),
            PopupMenuItem(
                child: TextButtonPopItem(
                    onPressed: () {
                      BlocProvider.of<ThemetextCubit>(context)
                          .changeLargeText();
                      Navigator.pop(context);
                    },
                    textpop: TextSettingsManager.kLarge)),
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
            PopupMenuItem(
                child: TextButtonPopItem(
                    onPressed: () {
                      BlocProvider.of<LayoutcubitCubit>(context)
                          .changeGridview();
                      Navigator.pop(context);
                    },
                    textpop: TextSettingsManager.kGridView)),
            PopupMenuItem(
                child: TextButtonPopItem(
                    onPressed: () {
                      BlocProvider.of<LayoutcubitCubit>(context)
                          .changeListview();
                      Navigator.pop(context);
                    },
                    textpop: TextSettingsManager.kListView)),
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
                    textpop: TextSettingsManager.kDark)),
            PopupMenuItem(
              child: TextButtonPopItem(
                  onPressed: () {
                    BlocProvider.of<ThemeCubit>(context).changelightTheme();
                    Navigator.pop(context);
                  },
                  textpop: TextSettingsManager.kLight),
            ),
          ],
          fontsize: TextSettingsManager.kTheme,
          meduim: TextSettingsManager.kDark,
        )
      ],
    );
  }
}
