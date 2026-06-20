import 'package:flutter/material.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/editNoteView/view/edit_note_screen.dart';
import 'package:notabli/settings/settings_screen.dart';
import 'package:notabli/views/home_screen.dart';
import 'package:notabli/features/onBoarding/presentation/view/onborading.dart';
import 'package:notabli/views/show_note_screen.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteManager.kHomescreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case RouteManager.kOnbording:
      return MaterialPageRoute(builder: (context) => const Onborading());
    case RouteManager.kShowscreen:
      return MaterialPageRoute(builder: (context) => const ShowNoteScreen());
    case RouteManager.kEditNote:
      return MaterialPageRoute(
        builder: (context) => const EditNoteScreen(),
      );
    case RouteManager.kSettingsScreen:
      return MaterialPageRoute(
        builder: (context) => const SettingsScreen(),
      );
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
