import 'package:bloc/bloc.dart';

part 'themetext_state.dart';

class ThemetextCubit extends Cubit<ThemeTextCubitState> {
  ThemetextCubit() : super(ThemeTextCubitState.medium);
  changeSmallText() {
    if (state == ThemeTextCubitState.medium ||
        state == ThemeTextCubitState.large) {
      emit(ThemeTextCubitState.small);
    }
  }

  changeMediumText() {
    if (state == ThemeTextCubitState.small ||
        state == ThemeTextCubitState.large) {
      emit(ThemeTextCubitState.medium);
    }
  }

  changeLargeText() {
    if (state == ThemeTextCubitState.small ||
        state == ThemeTextCubitState.medium) {
      emit(ThemeTextCubitState.large);
    }
  }
}
