import 'package:flutter/material.dart';
import 'package:note_demo/core/utils/route_manager.dart';
import 'package:note_demo/editNoteView/view/edit_note_screen.dart';
import 'package:note_demo/settings/settings_screen.dart';
import 'package:note_demo/views/home_screen.dart';
import 'package:note_demo/views/onborading.dart';
import 'package:note_demo/views/show_note_screen.dart';

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
