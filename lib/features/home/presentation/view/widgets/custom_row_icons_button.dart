import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notabli/core/cubits/displayNote/displaynote_cubit.dart';
import 'package:notabli/core/models/note_model.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_icon_button_content_note.dart';

class CustomRowIconsButton extends StatelessWidget {
  const CustomRowIconsButton({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButtonContentNote(
          onPressed: () {
            noteModel.delete();
            BlocProvider.of<DisplaynoteCubit>(context).displaynote();
          },
          iconData: FontAwesomeIcons.trash,
        ),
        CustomIconButtonContentNote(
          onPressed: () {},
          iconData: Icons.archive_outlined,
        ),
        CustomIconButtonContentNote(
          onPressed: () {},
          iconData: FontAwesomeIcons.share,
        ),
      ],
    );
  }
}
