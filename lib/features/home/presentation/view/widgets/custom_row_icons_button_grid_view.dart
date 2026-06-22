import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/presentation/bloc/note_cubit/note_cubit.dart';
import 'package:notabli/features/home/presentation/view/widgets/custom_icon_button_content_note.dart';

class CustomRowIconsButtonGridView extends StatelessWidget {
  const CustomRowIconsButtonGridView({super.key, required this.noteModel});
  final NoteModel noteModel;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomIconButtonContentNote(
          onPressed: () {
            noteModel.delete();
            BlocProvider.of<NoteCubit>(context).getNote();
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
