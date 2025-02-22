import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
import 'package:note_demo/models/note_model.dart';
import 'package:note_demo/views/home_screen.dart';
import 'package:note_demo/views/onborading.dart';
import 'package:note_demo/views/show_note_screen.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(NoteModelAdapter());
  // await Hive.deleteBoxFromDisk(kNotes);
  await Hive.openBox<NoteModel>(kNotes);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DisplaynoteCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: Onborading.id,
        routes: {
          Onborading.id: (context) => const Onborading(),
          HomeScreen.id: (context) => const HomeScreen(),
          ShowNoteScreen.id: (context) => const ShowNoteScreen(),
        },
      ),
    );
  }
}
