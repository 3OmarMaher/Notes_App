import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/custom_app_bar.dart';
import 'package:notes_app/views/widgets/custom_text_filed.dart';

import 'widgets/custom_button.dart';

class EditPage extends StatelessWidget {
  const EditPage({super.key});
  static String id = "editPage";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.only(left: 20, right: 20, top: 10),
      child: Column(
        children: [
          CustomAppBar(
            appBarTitle: "Edit Notes",
            icon: Icon(Icons.check),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: CustomTextFaild(
              hint: 'Title',
              maxLines: 1,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 30, 16, 0),
            child: CustomTextFaild(
              hint: 'Content',
              maxLines: 5,
            ),
          ),
          SizedBox(
            height: 30,
          ),
        
          
        ],
      ),
    ));
  }
}
