import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_note_cubit/add_note_cubit.dart';

import '../../constant/const.dart';

class ItemColor extends StatelessWidget {
  const ItemColor({super.key, required this.isSelected, required this.colors});
  final bool isSelected;
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return isSelected
        ? CircleAvatar(
            radius: 30,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 25,
              backgroundColor: colors,
            ),
          )
        : CircleAvatar(
            radius: 30,
            backgroundColor: colors,
          );
  }
}

class ItemsColorList extends StatefulWidget {
  const ItemsColorList({super.key});

  @override
  State<ItemsColorList> createState() => _ItemsColorListState();
}

class _ItemsColorListState extends State<ItemsColorList> {
  int? currentIndex;
  
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
              BlocProvider.of<AddNoteCubit>(context).color = kColors[currentIndex!];
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
