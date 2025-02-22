import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_demo/helper/hive_helper.dart';
import 'package:note_demo/models/note_model.dart';

part 'displaynote_state.dart';

class DisplaynoteCubit extends Cubit<DisplaynoteState> {
  DisplaynoteCubit() : super(DisplaynoteInitial());
  List<NoteModel>? note;
  displaynote() {
    note = HiveHelper().displayNotes();
    emit(DisplaynoteSuccess());
  }
}
