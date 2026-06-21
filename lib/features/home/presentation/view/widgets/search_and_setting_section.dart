import 'package:flutter/material.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/raduis_manager.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/utils/width_manager.dart';
import 'package:notabli/features/settings_view/presentation/view/settings_screen.dart';

class SearchAndSettingSection extends StatelessWidget {
  const SearchAndSettingSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: HeightManager.h50,
          width: MediaQuery.of(context).size.width * .75,
          child: TextField(
            decoration: InputDecoration(
              hintText: TextManager.kSearch,
              hintStyle: const TextStyle(
                color: ColorManager.colorgrey,
                fontSize: FontSizeManager.font16,
              ),
              prefixIcon: const Padding(
                padding: EdgeInsets.only(bottom: PaddingManager.pd5),
                child: Icon(Icons.search, color: ColorManager.colorgrey),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(RadiusManager.rd16),
                borderSide: BorderSide.none,
              ),
              filled: true,
            ),
          ),
        ),
        const SizedBox(width: WidthManager.w16),
        IconButton(
            onPressed: () {
              Navigator.pushNamed(context, SettingsScreen.id);
            },
            icon: const Icon(
              color: ColorManager.colorgrey,
              Icons.settings_outlined,
              size: FontSizeManager.font30,
            ))
      ],
    );
  }
}
