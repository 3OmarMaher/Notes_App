import 'package:hive/hive.dart';

part 'notes_model.g.dart'; //make to generate this file

@HiveType(typeId: 0) //give id to this hive class
class NotesModel extends HiveObject {
  @HiveField(0) //give id to this hive filed
   String title;
  @HiveField(1) //give id to this hive filed
   String subtitle;
  @HiveField(2) //give id to this hive filed
  final String date;
  @HiveField(3) //give id to this hive filed
   int color;

  NotesModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
}
