part of 'add_notes_bloc.dart';

@immutable
abstract class AddNotesState {}

class AddNotesInitial extends AddNotesState {}

class AddNotesLoading extends AddNotesState {}

class AddNotesSuccess extends AddNotesState {}

class AddNotesFailuer extends AddNotesState {
  final String errorMessage;

  AddNotesFailuer({required this.errorMessage});
}
