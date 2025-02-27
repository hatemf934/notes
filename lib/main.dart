import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
import 'package:note_demo/cubits/layout_cubit/layoutcubit_cubit.dart';
import 'package:note_demo/cubits/themecubit/themecubit_cubit.dart';
import 'package:note_demo/cubits/themetextcubit/themetext_cubit.dart';
import 'package:note_demo/models/note_model.dart';
import 'package:note_demo/editNoteView/view/edit_note_screen.dart';
import 'package:note_demo/models/theme_model.dart';
import 'package:note_demo/settings/settings_screen.dart';
import 'package:note_demo/views/home_screen.dart';
import 'package:note_demo/views/onborading.dart';
import 'package:note_demo/views/show_note_screen.dart';

void main() async {
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotes);
  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DisplaynoteCubit(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
        BlocProvider(
          create: (context) => LayoutcubitCubit(),
        ),
        BlocProvider(
          create: (context) => ThemetextCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeCubitState>(
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: Onborading.id,
            routes: {
              Onborading.id: (context) => const Onborading(),
              EditNoteScreen.id: (context) => const EditNoteScreen(),
              HomeScreen.id: (context) => const HomeScreen(),
              ShowNoteScreen.id: (context) => const ShowNoteScreen(),
              SettingsScreen.id: (context) => const SettingsScreen(),
            },
            theme: state == ThemeCubitState.light
                ? ModelTheme().lightmode
                : ModelTheme().darkmode,
          );
        },
      ),
    );
  }
}
