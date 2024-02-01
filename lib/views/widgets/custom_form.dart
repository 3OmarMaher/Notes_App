import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/views/widgets/custom_button.dart';
import 'package:notes_app/views/widgets/custom_note_colors.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';
import 'package:intl/intl.dart';

class CustomForm extends StatefulWidget {
  const CustomForm({super.key});

  @override
  State<CustomForm> createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  String? title, subtitle;

  GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autoValidateMode,
      child: Padding(
        padding:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
              child: CustomTextFaild(
                onSaved: (val) {
                  title = val;
                },
                hint: 'Title',
                maxLines: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
              child: CustomTextFaild(
                onSaved: (val) {
                  subtitle = val;
                },
                hint: 'Content',
                maxLines: 5,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: ItemsColorList(),
            ),
            const SizedBox(
              height: 5,
            ),
            BlocBuilder<AddNoteCubit, AddNotesState>(
              builder: (context, state) {
                return CustomButton(
                  isLoading: state is AddNoteLoading ? true : false,
                  txt: 'Add',
                  onTap: () {
                    validate(context);
                  },
                );
              },
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  void validate(BuildContext context) {
    if (formKey.currentState!.validate()) {
      formKey.currentState!.save();
      NotesModel note = NotesModel(
          title: title!,
          subtitle: subtitle!,
          date: DateFormat('yyyy-MM-dd').format(DateTime.now()),
          color: Colors.blueAccent.value);
      BlocProvider.of<AddNoteCubit>(context).addNote(note);
    } else {
      autoValidateMode = AutovalidateMode.always;
      setState(() {});
    }
  }
}
