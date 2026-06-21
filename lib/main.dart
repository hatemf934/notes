import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notabli/constant.dart';
import 'package:notabli/core/utils/color_manager.dart';
import 'package:notabli/core/utils/font_manager.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/helper/on_generate.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/core/cubits/displayNote/displaynote_cubit.dart';
import 'package:notabli/core/cubits/layout_cubit/layoutcubit_cubit.dart';
import 'package:notabli/core/cubits/themecubit/themecubit_cubit.dart';
import 'package:notabli/core/cubits/themetextcubit/themetext_cubit.dart';
import 'package:notabli/core/models/note_model.dart';
import 'package:notabli/features/onBoarding/presentation/view/onborading.dart';

void main() async {
  ErrorWidget.builder = (FlutterErrorDetails details) {
    return const Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error, color: Colors.red, size: FontSizeManager.font48),
            SizedBox(height: HeightManager.h20),
            Text(TextManager.kTryAgain,
                style: TextStyle(
                    color: Colors.red, fontSize: FontSizeManager.font20),
                textAlign: TextAlign.center)
          ],
        ),
      ),
    );
  };

  await Hive.initFlutter();
  WidgetsFlutterBinding.ensureInitialized();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNotes);
  await Hive.openBox<bool>(kTheme);
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
              onGenerateRoute: onGenerateRoute,
              theme: ThemeData(
                  scaffoldBackgroundColor:
                      ColorManager.scaffoldBackGroundColor));
        },
      ),
    );
  }
}
