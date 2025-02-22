import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_demo/core/size_grid_view.dart';
import 'package:note_demo/cubits/displayNote/displaynote_cubit.dart';
import 'package:note_demo/models/note_model.dart';
import 'package:note_demo/widgets/note_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DisplaynoteCubit, DisplaynoteState>(
      builder: (context, state) {
        List<NoteModel> note =
            BlocProvider.of<DisplaynoteCubit>(context).note ?? [];
        return GridView.builder(
            itemCount: note.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: SizeGridView.kCrossAxisCount,
              childAspectRatio: SizeGridView.kChildAspectRatio,
              crossAxisSpacing: SizeGridView.kCrossAxisSpacing,
              mainAxisSpacing: SizeGridView.kMainAxisSpacing,
            ),
            itemBuilder: (context, index) {
              return NoteItem(
                note: note[index],
              );
            });
      },
    );
  }
}
