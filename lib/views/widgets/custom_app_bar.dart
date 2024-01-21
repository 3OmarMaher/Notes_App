import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.appBarTitle, required this.icon, this.onPressed});
  final String appBarTitle;
  final Widget icon;
   final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25),
      child: Row(
        children: [
          Text(
            appBarTitle,
            style: const TextStyle(fontSize: 28),
          ),
          const Spacer(
            flex: 1,
          ),
          Container(
            height: 40,
            width: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white.withOpacity(0.09)),
            child: IconButton(onPressed:onPressed, icon: icon),
          )
        ],
      ),
    );
  }
}
