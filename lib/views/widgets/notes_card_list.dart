import 'package:flutter/material.dart';

import 'note_item.dart';

class NotesCards extends StatelessWidget {
  const NotesCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.zero,
          itemCount: 8,
          itemBuilder: (context, index) {
            return const CustomNoteCard();
          }),
    );
  }
}
