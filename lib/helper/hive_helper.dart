import 'package:hive_flutter/adapters.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/models/note_model.dart';

class HiveHelper {
  addNotes(NoteModel note) {
    var notebox = Hive.box<NoteModel>(kNotes);
    notebox.add(note);
  }

  List<NoteModel> displayNotes() {
    var displayBox = Hive.box<NoteModel>(kNotes);
    print(displayBox.values.toList());
    return displayBox.values.toList();
  }
}

List<NoteModel> displayNotes() {
  var displayBox = Hive.box<NoteModel>(kNotes);
  return displayBox.values.toList(); // تعديل هنا لإعادة القائمة بشكل صحيح
}
