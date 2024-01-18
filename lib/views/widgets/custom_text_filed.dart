import 'package:flutter/material.dart';

class CustomTextFaild extends StatelessWidget {
  const CustomTextFaild({
    super.key,
    required this.hint,
    this.maxLines=1, this.onSaved,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Filed Required";
        } else {
          return null;
        }
      },
      cursorColor: Colors.tealAccent,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(
          color: Colors.teal[400],
        ),
        border: customBorder() ,
        enabledBorder: customBorder(),
        focusedBorder: customBorder(Colors.tealAccent),
      ),
    );
  }

  OutlineInputBorder customBorder([Color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color ?? Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
