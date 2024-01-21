import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant/const.dart';
import 'package:notes_app/model/notes_model.dart';

import 'add_note_states.dart';

class AddNoteCubit extends Cubit<AddNotesState> {
  AddNoteCubit() : super(AddNoteInital());

  Color color = const Color(0xff8ecae6);

  void addNote(NotesModel note) {
    note.color = color.value;
    emit(AddNoteLoading());
    try {
      var notesBox = Hive.box<NotesModel>(kBoxName);
      notesBox.add(note);
      
      emit(AddNoteSuccess());
    } catch (e) {
      emit(AddNoteFaliuer(e.toString()));
    }
  }
}
