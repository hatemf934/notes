import 'package:bloc/bloc.dart';

part 'layoutcubit_state.dart';

class LayoutcubitCubit extends Cubit<LayoutcubitState> {
  LayoutcubitCubit() : super(LayoutcubitState.grid);
  changeGridview() {
    if (state == LayoutcubitState.list) {
      emit(LayoutcubitState.grid);
    }
  }

  changeListview() {
    if (state == LayoutcubitState.grid) {
      emit(LayoutcubitState.list);
    }
  }
}
