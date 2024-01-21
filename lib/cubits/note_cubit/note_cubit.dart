import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'package:notes_app/constant/const.dart';
import 'package:notes_app/model/notes_model.dart';

import 'note_cubit_state.dart';

class NotesCubit extends Cubit<NoteCubitState> {
  NotesCubit() : super(NoteCubitInitial());

  List<NotesModel>? notes;
  void getAllNotes() {
    var noteBox = Hive.box<NotesModel>(kBoxName);
    notes = noteBox.values.toList();
    emit(NoteCubitSuccess());
  }
}
