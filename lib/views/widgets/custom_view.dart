import 'package:flutter/material.dart';
import 'custom_app_bar.dart';
import 'notes_card_list.dart';

class CustomView extends StatelessWidget {
  const CustomView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          CustomAppBar(appBarTitle: "Notes",icon: Icon(Icons.search)),
          Expanded(child: NotesCards()),
        ],
      ),
    );
  }
}
