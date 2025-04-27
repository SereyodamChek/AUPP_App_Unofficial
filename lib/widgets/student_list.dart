import 'package:flutter/material.dart';
import 'package:information_student/student_data.dart';

class StudentList extends StatelessWidget {
  const StudentList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: studentData.length,
      itemBuilder: (context, index) {
        var stuData = studentData[index];
        return Card(
          child: ListTile(
            leading: const CircleAvatar(
              child: Icon(Icons.person, color: Colors.white),
              backgroundColor: Color.fromARGB(
                255,
                125,
                39,
                218,
              ), // Icon background color
            ),
            title: Text(stuData.name),
            subtitle: Text(
              "${stuData.id}, ${stuData.sex}, ${stuData.birth}",
              style: TextStyle(color: const Color.fromARGB(255, 141, 141, 141)),
            ),
            trailing: Text(stuData.faculty),
          ),
        );
      },
    );
  }
}
