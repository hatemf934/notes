import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notabli/core/utils/padding_manager.dart';
import 'package:notabli/core/cubits/displayNote/displaynote_cubit.dart';
import 'package:notabli/core/models/note_model.dart';
import 'package:notabli/features/home/presentation/view/widgets/note_list_view.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplaynoteCubit, DisplaynoteState>(
      builder: (context, state) {
        List<NoteModel> note =
            BlocProvider.of<DisplaynoteCubit>(context).note ?? [];
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
