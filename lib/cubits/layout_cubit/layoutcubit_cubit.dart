import 'package:bloc/bloc.dart';

part 'layoutcubit_state.dart';

class LayoutcubitCubit extends Cubit<LayoutcubitState> {
  LayoutcubitCubit() : super(LayoutcubitState.GridView);

  changeGridview() {
    if (state == LayoutcubitState.ListView) {
      emit(LayoutcubitState.GridView);
    }
  }

  changeListview() {
    if (state == LayoutcubitState.GridView) {
      emit(LayoutcubitState.ListView);
    }
  }
}
