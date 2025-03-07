import 'package:bloc/bloc.dart';
import 'package:note_demo/helper/hive_helper.dart';

part 'layoutcubit_state.dart';

class LayoutcubitCubit extends Cubit<LayoutcubitState> {
  LayoutcubitCubit() : super(LayoutcubitState.GridView) {
    _loadTheme();
  }

  Future<void> _loadTheme() async {
    final isGrid = await HiveHelper().getLayoutTheme();
    emit(isGrid ? LayoutcubitState.GridView : LayoutcubitState.ListView);
  }

  Future<void> _saveTLayoutheme(bool isGrid) async {
    await HiveHelper().saveLayoutTheme(isGrid);
  }

  changeview() {
    if (state == LayoutcubitState.ListView) {
      emit(LayoutcubitState.GridView);
      _saveTLayoutheme(true);
    } else {
      emit(LayoutcubitState.ListView);
      _saveTLayoutheme(false);
    }
  }
}
