import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/presentation/bloc/note_cubit/note_cubit.dart';
import 'package:notabli/features/home/presentation/view/widgets/note_list_view.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NoteCubit, NoteState>(
      builder: (context, state) {
        List<NoteModel> note = BlocProvider.of<NoteCubit>(context).notes;
        return ListView.builder(
            itemCount: note.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: PaddingManager.pd8,
                ),
                child: NoteListView(
                  note: note[index],
                ),
              );
            });
      },
    );
  }
}
