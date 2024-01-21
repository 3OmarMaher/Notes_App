import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_states.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.txt, this.onTap, this.isLoading = false});
  final String txt;
  final void Function()? onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocBuilder<AddNoteCubit, AddNotesState>(
        builder: (context, state) {
          return MaterialButton(
              height: 50,
              minWidth: MediaQuery.of(context).size.width,
              color: Colors.teal,
              textColor: Colors.black,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              onPressed: onTap,
              child: isLoading
                  ? const CircularProgressIndicator(
                      backgroundColor: Colors.grey,
                      color: Colors.black,
                    )
                  : Text(
                      txt,
                      style: const TextStyle(fontSize: 20),
                    ));
        },
      ),
    );
  }
}
