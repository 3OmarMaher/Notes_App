import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit_state.dart';
import 'package:notes_app/model/notes_model.dart';

import 'custom_note_item.dart';

class NotesCards extends StatelessWidget {
  const NotesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotesCubit, NoteCubitState>(
      builder: (context, state) {
        List<NotesModel> notes = BlocProvider.of<NotesCubit>(context).notes!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return CustomNoteItems(
                  note: notes[index],
                );
              }),
        );
      },
    );
  }
}
