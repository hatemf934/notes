import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/helper/server_locator.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/helper/on_generate.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/data/repo/note_repo_implements.dart';
import 'package:notabli/features/adding_note/presentation/bloc/note_cubit/note_cubit.dart';
import 'package:notabli/features/onBoarding/presentation/view/onborading.dart';

void main() async {
  setUp();
  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotes);
  await Hive.box<NoteModel>(kNotes).clear();
  await Hive.openBox<bool>(kTheme);

  runApp(const NoteApp());
}

class NoteApp extends StatelessWidget {
  const NoteApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NoteCubit(getIt<NoteRepoImplements>()),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: Onborading.id,
          onGenerateRoute: onGenerateRoute,
          theme: ThemeData(
              scaffoldBackgroundColor: ColorManager.scaffoldBackGroundColor)),
    );
  }
}
