import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:notabli/cubits/displayNote/displaynote_cubit.dart';
import 'package:notabli/models/note_model.dart';
import 'package:notabli/widgets/note_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplaynoteCubit, DisplaynoteState>(
      builder: (context, state) {
        List<NoteModel> note =
            BlocProvider.of<DisplaynoteCubit>(context).note ?? [];
        return MasonryGridView.count(
          scrollDirection: Axis.vertical,
          itemCount: note.length,
          crossAxisCount: 2,
          mainAxisSpacing: 8,
          crossAxisSpacing: 8,
          itemBuilder: (context, index) {
            return NoteItem(
              note: note[index],
            );
          },
        );
      },
    );
  }
}
