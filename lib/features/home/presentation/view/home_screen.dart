import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notabli/core/utils/height_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/utils/route_manager.dart';
import 'package:notabli/core/cubits/displayNote/displaynote_cubit.dart';
import 'package:notabli/core/cubits/layout_cubit/layoutcubit_cubit.dart';
import 'package:notabli/features/home/presentation/view/widgets/search_and_setting_section.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_floating_action_button.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_grid_view.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_list_view.dart';
import 'package:notabli/features/home/presentation/view/widgets/empty_notes.dart';

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
          padding: const EdgeInsets.all(PaddingManager.pd16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: HeightManager.h50),
              const SearchAndSettingSection(),
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
