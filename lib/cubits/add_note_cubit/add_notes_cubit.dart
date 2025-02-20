import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_demo/helper/hive_helper.dart';
import 'package:note_demo/models/note_model.dart';

part 'add_notes_state.dart';

class AddNotesCubit extends Cubit<AddNotesState> {
  AddNotesCubit() : super(AddNotesInitial());
  addNotesCubit(NoteModel note) {
    emit(NotesLoading());
    try {
      HiveHelper().addNotes(note);
      emit(NotesSuccess());
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
