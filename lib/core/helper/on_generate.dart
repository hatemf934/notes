import 'package:flutter/material.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/edit_note_screen.dart';
import 'package:notabli/features/home/presentation/view/home_screen.dart';
import 'package:notabli/features/onBoarding/presentation/view/onborading.dart';
import 'package:notabli/features/home/presentation/view/show_note_screen.dart';

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
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
