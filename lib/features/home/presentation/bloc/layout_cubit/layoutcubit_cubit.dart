import 'package:bloc/bloc.dart';
import 'package:notabli/core/services/hive_services.dart';
import 'package:notabli/core/utils/text_manager.dart';
import 'package:notabli/features/home/data/repo/layout_repo_implement.dart';

part 'layoutcubit_state.dart';

class LayoutcubitCubit extends Cubit<LayoutcubitState> {
  LayoutcubitCubit() : super(LayoutcubitState.GridView) {
    loadTheme();
  }
  final LayoutRepoImplement layoutRepoImplement =
      LayoutRepoImplement(hiveServices: HiveServices());

  final bool grid = false;

  loadTheme() {
    final isGrid =
        layoutRepoImplement.getLayout(isGrid: grid, key: TextManager.kIsGrid);
    emit(isGrid ? LayoutcubitState.GridView : LayoutcubitState.ListView);
  }

  Future<void> putLayout(bool isGrid) async {
    await layoutRepoImplement.putLayout(
        isGrid: isGrid, key: TextManager.kIsGrid);
  }

  changeview() {
    if (state == LayoutcubitState.ListView) {
      emit(LayoutcubitState.GridView);
      putLayout(true);
    } else {
      emit(LayoutcubitState.ListView);
      putLayout(false);
    }
  }
}
