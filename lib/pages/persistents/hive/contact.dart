import 'package:hive/hive.dart';

@HiveType()
class Contact {
  @HiveField(0)
  final String name;
  @HiveField(1)
  final int age;

  Contact(this.name, this.age);
}
