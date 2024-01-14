import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.txt});
  final String txt;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: MaterialButton(
        height: 50,
        minWidth: MediaQuery.of(context).size.width,
        color: Colors.teal,
        textColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        onPressed: () {},
        child:  Text(
          txt,
          style: const TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
