import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notabli/core/utils/assets_manager.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/presentation/bloc/note_cubit/note_cubit.dart';
import 'package:notabli/features/home/presentation/view/widgets/note_list_view.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key, required this.searchQuery});
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
            : ListView.builder(
                itemCount: notes.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: PaddingManager.pd8,
                    ),
                    child: NoteListView(
                      note: notes[index],
                    ),
                  );
                });
      },
    );
  }
}
