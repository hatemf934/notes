import 'package:hive_flutter/adapters.dart';
import 'package:note_demo/constant.dart';
import 'package:note_demo/models/note_model.dart';

class HiveHelper {
  Future<void> addNotes(NoteModel note) async {
    var notebox = Hive.box<NoteModel>(kNotes);
    await notebox.add(note);
  }

  List<NoteModel> displayNotes() {
    var displayBox = Hive.box<NoteModel>(kNotes);
    return displayBox.values.toList();
  }

  Future<void> saveTheme(bool isDark) async {
    var themebox = Hive.box<bool>('themeBox');
    await themebox.put("isDark", isDark);
  }

  getTheme() {
    var gettheme = Hive.box<bool>("themebox");
    return gettheme.get("isDark", defaultValue: false);
  }
}
