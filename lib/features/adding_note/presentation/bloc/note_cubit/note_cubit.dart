import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/features/adding_note/data/repo/note_repo_implements.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  NoteCubit(this.repoImplements) : super(NoteInitial());
  final NoteRepoImplements repoImplements;
  List<NoteModel> notes = [];
  Future<void> addNote(NoteModel noteModel) async {
    await repoImplements.addNote(noteModel: noteModel);
    getNote();
  }

  void getNote() {
    notes = repoImplements.getNote();
    notes.sort((a, b) => b.dateTime.compareTo(a.dateTime));
    if (notes.isEmpty) {
      emit(DisplaynotesEmpty());
    } else {
      emit(DisplaynoteSuccess(noteModel: notes));
    }
  }
}
