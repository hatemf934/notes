import 'package:flutter/material.dart';
import 'package:note_demo/core/size_grid_view.dart';
import 'package:note_demo/widgets/note_item.dart';

class CustomGridView extends StatelessWidget {
  const CustomGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 6,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: SizeGridView.kCrossAxisCount,
          childAspectRatio: SizeGridView.kChildAspectRatio,
          crossAxisSpacing: SizeGridView.kCrossAxisSpacing,
          mainAxisSpacing: SizeGridView.kMainAxisSpacing,
        ),
        itemBuilder: (context, index) {
          return const NoteItem();
        });
  }
}
