import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_page.dart';
import 'package:notes_app/views/home_pge.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  Hive.initFlutter();
  Hive.openBox('notes_box');
  runApp(const NotesApp());
}

class NotesApp extends StatelessWidget {
  const NotesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: false,
          brightness: Brightness.dark,
          fontFamily: 'Poppins',
        ),
        initialRoute: HomePage.id,
        routes: {
          HomePage.id: (context) => const HomePage(),
          EditPage.id: (context) => const EditPage()
        });
  }
}
