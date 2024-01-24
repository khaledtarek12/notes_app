import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:notesapp/constant.dart';
import 'package:notesapp/models/note_model.dart';

part 'notes_cubit_state.dart';

class NotesCubitCubit extends Cubit<NotesCubitState> {
  NotesCubitCubit() : super(NotesCubitInitial());

  fetchAllNotes() async {
    try {
      var notesBox = Hive.box<NoteModel>(kNoteBox);

      List<NoteModel> notes = notesBox.values.toList();

      emit(NotesCubitSuccess(notes: notes));
    } catch (e) {
      emit(NotesCubitFailuer(errorMessage: e.toString()));
    }
  }
}
