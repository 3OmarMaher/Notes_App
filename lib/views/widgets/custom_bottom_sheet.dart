import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';

import 'package:notes_app/views/widgets/custom_form.dart';

class CusttomBottomSheet extends StatelessWidget {
  const CusttomBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AddNoteCubit, AddNotesState>(
      listener: (context, state) {
        if (state is AddNoteFaliuer) {
          ScaffoldMessenger.of(context);
        }  if (state is AddNoteSuccess) {
          BlocProvider.of<NotesCubit>(context).getAllNotes();
          Navigator.of(context).pop();
        }
      },
      builder: (context, state) {
        return SingleChildScrollView(
            child: AbsorbPointer(
                absorbing: state is AddNoteLoading ? true : false,
                child: const CustomForm()));
      },
    );
  }
}
