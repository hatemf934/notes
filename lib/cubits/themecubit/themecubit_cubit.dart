import 'package:bloc/bloc.dart';

part 'themecubit_state.dart';

class ThemeCubit extends Cubit<ThemeCubitState> {
  ThemeCubit() : super(ThemeCubitState.light);
  changedarkTheme() {
    if (state == ThemeCubitState.light) {
      emit(ThemeCubitState.dark);
    }
  }

  changelightTheme() {
    if (state == ThemeCubitState.dark) {
      emit(ThemeCubitState.light);
    }
  }
}
