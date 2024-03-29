import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/constant/const.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_note_colors.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key, required this.model});
  static String id = "editPage";
  final NotesModel model;

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          CustomAppBar(
            onPressed: () {
              widget.model.title = title ?? widget.model.title;
              widget.model.subtitle = subtitle ?? widget.model.subtitle;
              BlocProvider.of<NotesCubit>(context).getAllNotes();
              Navigator.of(context).pop();
            },
            appBarTitle: "Edit Notes",
            icon: const Icon(Icons.check),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: CustomTextFaild(
              onChanged: (value) {
                title = value;
              },
              hint: widget.model.title,
              maxLines: 1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: CustomTextFaild(
              onChanged: (value) {
                subtitle = value;
              },
              hint: widget.model.subtitle,
              maxLines: 5,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          EditNoteColors(
            note: widget.model,
          )
        ],
      ),
    ));
  }
}

class EditNoteColors extends StatefulWidget {
  const EditNoteColors({super.key, required this.note});

  final NotesModel note;

  @override
  State<EditNoteColors> createState() => _EditNoteColorsState();
}

class _EditNoteColorsState extends State<EditNoteColors> {
  late int currentIndex;

//  @override
//   void initState() {
//     currentIndex = kColors.indexWhere((element) => element.value == widget.note.color);
//     super.initState();
//   }

  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30 * 2,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColors.length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: GestureDetector(
            onTap: () {
              currentIndex = index;
              widget.note.color = kColors[index].value;
              setState(() {});
            },
            child: ItemColor(
              colors: kColors[index],
              isSelected: currentIndex == index,
            ),
          ),
        ),
      ),
    );
  }
}
