import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/cubits/layout_cubit/layoutcubit_cubit.dart';
import 'package:note_demo/cubits/themecubit/themecubit_cubit.dart';
import 'package:note_demo/cubits/themetextcubit/themetext_cubit.dart';
import 'package:note_demo/settings/core/text_settings_manager.dart';
import 'package:note_demo/settings/widget/Popup_Menu_Item_With_Feedback.dart';
import 'package:note_demo/settings/widget/setting_Popup_Menu.dart';

class RowStyleSetting extends StatefulWidget {
  const RowStyleSetting({super.key});

  @override
  State<RowStyleSetting> createState() => _RowStyleSettingState();
}

class _RowStyleSettingState extends State<RowStyleSetting> {
  late String textSize;
  late String layoutStyle;
  late String themeStyle;

  @override
  void initState() {
    super.initState();
    // تعيين القيم بناءً على الحالة الحالية
    final themetextCubit = BlocProvider.of<ThemetextCubit>(context);
    final layoutCubit = BlocProvider.of<LayoutcubitCubit>(context);
    final themeCubit = BlocProvider.of<ThemeCubit>(context);

    textSize = themetextCubit.state.toString().split('.').last;
    layoutStyle = layoutCubit.state.toString().split('.').last;
    themeStyle = themeCubit.state.toString().split('.').last;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SettingPopupMenu(
          minHeight: 120,
          minWidth: 160,
          itemBuilder: [
            PopupMenuItem(
                child: PopupMenuItemWithFeedback(
                    onPressed: () {
                      BlocProvider.of<ThemetextCubit>(context)
                          .changeSmallText();
                      Navigator.pop(context);
                      setState(() {
                        textSize = TextSettingsManager.kSmall;
                      });
                    },
                    text: TextSettingsManager.kSmall)),
            PopupMenuItem(
                child: PopupMenuItemWithFeedback(
                    onPressed: () {
                      BlocProvider.of<ThemetextCubit>(context)
                          .changeMediumText();
                      Navigator.pop(context);
                      setState(() {
                        textSize = TextSettingsManager.kMedium;
                      });
                    },
                    text: TextSettingsManager.kMedium)),
            PopupMenuItem(
                child: PopupMenuItemWithFeedback(
                    onPressed: () {
                      BlocProvider.of<ThemetextCubit>(context)
                          .changeLargeText();
                      Navigator.pop(context);
                      setState(() {
                        textSize = TextSettingsManager.kLarge;
                      });
                    },
                    text: TextSettingsManager.kLarge)),
          ],
          fontsize: TextSettingsManager.kFontSize,
          meduim: textSize,
        ),
        SizedBox(
          height: HeightManager.h20,
        ),
        SettingPopupMenu(
          minHeight: 50,
          minWidth: 200,
          itemBuilder: [
            PopupMenuItem(
                child: PopupMenuItemWithFeedback(
              onPressed: () {
                BlocProvider.of<LayoutcubitCubit>(context).changeGridview();
                Navigator.pop(context);
                setState(() {
                  layoutStyle = TextSettingsManager.kGridView;
                });
              },
              text: TextSettingsManager.kGridView,
            )),
            PopupMenuItem(
                child: PopupMenuItemWithFeedback(
              onPressed: () {
                BlocProvider.of<LayoutcubitCubit>(context).changeListview();
                Navigator.pop(context);
                setState(() {
                  layoutStyle = TextSettingsManager.kListView;
                });
              },
              text: TextSettingsManager.kListView,
            )),
          ],
          fontsize: TextSettingsManager.kLayout,
          meduim: layoutStyle,
        ),
        SizedBox(
          height: HeightManager.h20,
        ),
        SettingPopupMenu(
          minHeight: 50,
          minWidth: 200,
          itemBuilder: [
            PopupMenuItem(
                child: PopupMenuItemWithFeedback(
                    onPressed: () {
                      BlocProvider.of<ThemeCubit>(context).changeTheme();
                      Navigator.pop(context);
                      setState(() {
                        themeStyle = TextSettingsManager.kDark;
                      });
                    },
                    text: TextSettingsManager.kDark)),
            PopupMenuItem(
                child: PopupMenuItemWithFeedback(
                    onPressed: () {
                      BlocProvider.of<ThemeCubit>(context).changeTheme();
                      Navigator.pop(context);
                      setState(() {
                        themeStyle = TextSettingsManager.kLight;
                      });
                    },
                    text: TextSettingsManager.kLight)),
          ],
          fontsize: TextSettingsManager.kTheme,
          meduim: themeStyle,
        )
      ],
    );
  }
}
