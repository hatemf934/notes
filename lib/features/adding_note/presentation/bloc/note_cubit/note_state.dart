part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

final class DisplaynoteSuccess extends NoteState {
  final List<NoteModel> noteModel;

  DisplaynoteSuccess({required this.noteModel});
}

final class DisplaynotesEmpty extends NoteState {}
