import 'package:flutter/material.dart';

class CustomTextFaild extends StatelessWidget {
  const CustomTextFaild({
    super.key,
    required this.hint,
    required this.maxLines,
  });
  final String hint;
  final int maxLines;

  @override
  Widget build(BuildContext context) {
    return TextField(
      
      cursorColor: Colors.tealAccent,
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle:  TextStyle(
            color: Colors.teal[400], ),
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
