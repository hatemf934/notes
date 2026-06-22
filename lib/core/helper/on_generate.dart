import 'package:flutter/material.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/features/adding_note/presentation/view/show_note_view.dart';
import 'package:notabli/features/home/presentation/view/home_screen.dart';
import 'package:notabli/features/onBoarding/presentation/view/onborading.dart';
import 'package:notabli/features/adding_note/presentation/view/note_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteManager.kHomescreen:
      return MaterialPageRoute(builder: (context) => const HomeScreen());
    case RouteManager.kOnbording:
      return MaterialPageRoute(builder: (context) => const Onborading());
    case RouteManager.kShowscreen:
      return MaterialPageRoute(builder: (context) => const NoteView());
    case RouteManager.kEditNote:
      final noteModel = routeSettings.arguments as NoteModel;
      return MaterialPageRoute(
          builder: (context) => ShowNoteView(noteModel: noteModel));
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
