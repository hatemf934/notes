import 'package:notabli/constant.dart';
import 'package:notabli/features/adding_note/data/model/note_model.dart';
import 'package:notabli/core/services/hive_services.dart';
import 'package:notabli/features/adding_note/data/repo/note_repo.dart';

class NoteRepoImplements extends NoteRepo {
  final HiveServices hiveServices;

  NoteRepoImplements({required this.hiveServices});
  @override
  Future<void> addNote({required NoteModel noteModel}) async {
    await hiveServices.addData(boxName: kNotes, data: noteModel);
  }

  @override
  List<NoteModel> getNote() {
    return hiveServices.getListData(boxName: kNotes);
  }
}
