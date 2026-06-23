import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notabli/core/utils/assets_manager.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/presentation/bloc/note_cubit/note_cubit.dart';
import 'package:notabli/features/home/presentation/view/widgets/note_grid_view.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key, required this.searchQuery});
  final String searchQuery;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> allnote = BlocProvider.of<NoteCubit>(context).notes;
        List<NoteModel> notes = searchQuery.isEmpty
            ? allnote
            : allnote
                .where((note) =>
                    note.title
                        .toLowerCase()
                        .contains(searchQuery.toLowerCase()) ||
                    note.subTitle
                        .toLowerCase()
                        .contains(searchQuery.toLowerCase()))
                .toList();
        return notes.isEmpty
            ? Center(child: Image.asset(AssetsManager.noResult))
            : MasonryGridView.count(
                scrollDirection: Axis.vertical,
                itemCount: notes.length,
                crossAxisCount: 2,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                itemBuilder: (context, index) {
                  return NoteGridView(note: notes[index]);
                },
              );
      },
    );
  }
}
