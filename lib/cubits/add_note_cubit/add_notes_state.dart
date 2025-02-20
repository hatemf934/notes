part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}

final class NotesLoading extends AddNotesState {}

final class NotesSuccess extends AddNotesState {}

final class NotesFailure extends AddNotesState {
  final String errormessage;

  NotesFailure(this.errormessage);
}
