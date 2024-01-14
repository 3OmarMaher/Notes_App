import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_bottom_sheet.dart';
import 'widgets/custom_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
 static String id = "HomePage";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          foregroundColor: Colors.amberAccent,
          onPressed: () {
            showModalBottomSheet(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              context: context,
              builder: (context) {
                return const CusttomBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const CustomView());
  }
}
