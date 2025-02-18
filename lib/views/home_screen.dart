import 'package:flutter/material.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/widgets/custom_floating_action_button.dart';
import 'package:note_demo/widgets/custom_grid_view.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static String id = RouteManager.kHomescreen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: EdgeInsets.all(PaddingManager.pd16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: HeightManager.h30,
              ),
              Text(
                TextManager.kNotesHome,
                style: TextStyle(
                    fontFamily: FontFamilyManager.kOtamaFont,
                    fontSize: FontSizeManager.font30,
                    fontWeight: FontWeight.bold),
              ),
              const Expanded(child: CustomGridView())
            ],
          ),
        ),
        floatingActionButton: const CustomFloatingActionButton());
  }
}
