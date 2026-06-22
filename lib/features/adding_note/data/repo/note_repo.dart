import 'package:notabli/features/adding_note/data/model/note_model.dart';

abstract class NoteRepo {
  Future<void> addNote({required NoteModel noteModel});
  List<NoteModel> getNote();
}
