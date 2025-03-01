import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/font_manager.dart';
import 'package:note_demo/core/height_width_manager.dart';
import 'package:note_demo/core/padding_manager.dart';
import 'package:note_demo/core/route_manager.dart';
import 'package:note_demo/core/text_manager.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
import 'package:note_demo/cubits/layout_cubit/layoutcubit_cubit.dart';
import 'package:note_demo/settings/settings_screen.dart';
import 'package:note_demo/widgets/custom_floating_action_button.dart';
import 'package:note_demo/widgets/custom_grid_view.dart';
import 'package:note_demo/widgets/custom_list_view.dart';
import 'package:note_demo/widgets/empty_notes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  static String id = RouteManager.kHomescreen;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<DisplaynoteCubit>(context).displaynote();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: EdgeInsets.all(PaddingManager.pd16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: HeightManager.h20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    TextManager.kNotesHome,
                    style: TextStyle(
                        fontFamily: FontFamilyManager.kOtamaFont,
                        fontSize: FontSizeManager.font30,
                        fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                      onPressed: () {
                        Navigator.pushNamed(context, SettingsScreen.id);
                      },
                      icon: Icon(
                        Icons.settings_outlined,
                        size: FontSizeManager.font30,
                      ))
                ],
              ),
              BlocBuilder<DisplaynoteCubit, DisplaynoteState>(
                builder: (context, state) {
                  if (state is DisplaynotesEmpty) {
                    return const EmptyNotes();
                  } else {
                    return BlocBuilder<LayoutcubitCubit, LayoutcubitState>(
                      builder: (context, state) {
                        if (state == LayoutcubitState.GridView) {
                          return const Expanded(child: CustomGridView());
                        } else if (state == LayoutcubitState.ListView) {
                          return const Expanded(child: CustomListView());
                        } else {
                          return const Center(
                              child: Text(
                            "this is error",
                            style: TextStyle(fontSize: 32),
                          ));
                        }
                      },
                    );
                  }
                },
              )
            ],
          ),
        ),
        floatingActionButton: const CustomFloatingActionButton());
  }
}
