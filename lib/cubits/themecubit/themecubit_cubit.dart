import 'package:bloc/bloc.dart';
import 'package:note_demo/helper/hive_helper.dart';

part 'themecubit_state.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.Light) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final isDark = await HiveHelper().getTheme();
    emit(isDark ? ThemeCubitState.Dark : ThemeCubitState.Light);
  }

  Future<void> _saveTheme(bool isDark) async {
    await HiveHelper().saveTheme(isDark);
  }

  void changeTheme() {
    if (state == ThemeCubitState.Light) {
      emit(ThemeCubitState.Dark);
      _saveTheme(true);
    } else {
      emit(ThemeCubitState.Light);
      _saveTheme(false);
    }
  }
}
