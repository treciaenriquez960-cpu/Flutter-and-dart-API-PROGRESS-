import 'package:flutter/material.dart';
import '../models/student.dart';
import '../theme/student_form_screen.dart';
import 'student_form_screen.dart';

class StudentListScreen extends StatefulWidget {
  @override
  _StudentListScreenState createState() => _StudentListScreenState();
}

class _StudentListScreenState extends State<StudentListScreen> {

  List<Student> students = [];

  void addStudent(Student student) {
    setState(() {
      students.add(student);
    });
  }

  void updateStudent(int index, Student student) {
    setState(() {
      students[index] = student;
    });
  }

  void deleteStudent(int index) {
    setState(() {
      students.removeAt(index);
    });
  }

  void openForm({Student? student, int? index}) async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => StudentFormScreen(student: student),
      ),
    );

    if (result != null) {
      if (student == null) {
        addStudent(result);
      } else {
        updateStudent(index!, result);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Student Records")),
      body: ListView.builder(
        itemCount: students.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(students[index].name),
            subtitle: Text(students[index].course),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [

                IconButton(
                  icon: Icon(Icons.edit),
                  onPressed: () => openForm(
                    student: students[index],
                    index: index,
                  ),
                ),

                IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => deleteStudent(index),
                ),

              ],
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => openForm(),
      ),
    );
  }
} 