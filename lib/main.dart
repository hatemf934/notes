import 'package:flutter/material.dart';
import 'package:note_demo/views/home_screen.dart';
import 'package:note_demo/views/onborading.dart';

void main() {
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Onborading.id,
      routes: {
        Onborading.id: (context) => const Onborading(),
        HomeScreen.id: (context) => const HomeScreen(),
      },
    );
  }
}
