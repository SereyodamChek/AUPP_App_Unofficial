import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Faculty { it, business, agricalture, language, community }

class StudentModel {
  final String id;
  final String name;
  final String sex;
  final String birth;
  final String faculty;

  StudentModel({
    required this.name,
    required this.sex,
    required this.birth,
    required this.faculty,
  }) : id = uuid.v4(); // Generate a unique ID using uuid package
}
