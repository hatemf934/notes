import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notabli/helper/hive_helper.dart';
import 'package:notabli/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  Future<void> addNotesCubit(NoteModel note) async {
    emit(NotesLoading());
    try {
      await HiveHelper().addNotes(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
