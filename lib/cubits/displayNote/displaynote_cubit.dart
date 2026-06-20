import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:notabli/helper/hive_helper.dart';
import 'package:notabli/models/note_model.dart';

part 'displaynote_state.dart';

class DisplaynoteCubit extends Cubit<DisplaynoteState> {
  DisplaynoteCubit() : super(DisplaynoteInitial());
  List<NoteModel>? note;
  displaynote() {
    note = HiveHelper().displayNotes();

    if (note == null || note!.isEmpty) {
      emit(DisplaynotesEmpty());
    } else {
      emit(DisplaynoteSuccess());
    }
  }
}
