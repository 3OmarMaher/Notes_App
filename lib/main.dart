import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/constant/const.dart';
import 'package:notes_app/cubits/note_cubit/note_cubit.dart';
import 'package:notes_app/model/notes_model.dart';
import 'package:notes_app/simple_bloc_observer/simple_bloc_observer.dart';
import 'package:notes_app/views/pages/edit_page.dart';
import 'package:notes_app/views/pages/home_pge.dart';

void main() async {
  Bloc.observer = SimbleObserver();
  await Hive.initFlutter();
  Hive.registerAdapter(NotesModelAdapter());
  await Hive.openBox<NotesModel>(kBoxName);

  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            useMaterial3: false,
            brightness: Brightness.dark,
            fontFamily: 'Poppins',
          ),
          initialRoute: HomePage.id,
          routes: {
            HomePage.id: (context) => const HomePage(),
           
          }),
    );
  }
}
