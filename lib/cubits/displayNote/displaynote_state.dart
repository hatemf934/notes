part of 'displaynote_cubit.dart';

@immutable
sealed class DisplaynoteState {}

final class DisplaynoteInitial extends DisplaynoteState {}

final class DisplaynoteSuccess extends DisplaynoteState {}

final class DisplaynotesEmpty extends DisplaynoteState {}
