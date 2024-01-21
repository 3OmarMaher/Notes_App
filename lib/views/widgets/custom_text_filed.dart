import 'package:flutter/material.dart';

class CustomTextFaild extends StatelessWidget {
  const CustomTextFaild({
    super.key,
    required this.hint,
    this.maxLines = 1,
    this.onSaved, this.onChanged,
  });
  final String hint;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
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
        border: customBorder(),
        enabledBorder: customBorder(),
        focusedBorder: customBorder(Colors.tealAccent),
      ),
    );
  }

  // ignore: avoid_types_as_parameter_names, non_constant_identifier_names
  OutlineInputBorder customBorder([Color]) {
    return OutlineInputBorder(
      borderSide: BorderSide(color: Color ?? Colors.white),
      borderRadius: BorderRadius.circular(16),
    );
  }
}
