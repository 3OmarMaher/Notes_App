class AddNotesState {}

class AddNoteInital extends AddNotesState {}

class AddNoteLoading extends AddNotesState {}

class AddNoteSuccess extends AddNotesState {}

class AddNoteFaliuer extends AddNotesState {
  final String errorMessege;

  AddNoteFaliuer(this.errorMessege);

}
