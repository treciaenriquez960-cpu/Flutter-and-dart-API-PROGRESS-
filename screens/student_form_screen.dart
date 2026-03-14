import 'package:flutter/material.dart';
import '../models/student.dart';
import 'models/student.dart';

class StudentFormScreen extends StatefulWidget {

  final Student? student;

  StudentFormScreen({this.student});

  @override
  _StudentFormScreenState createState() => _StudentFormScreenState();
}

class _StudentFormScreenState extends State<StudentFormScreen> {

  final nameController = TextEditingController();
  final courseController = TextEditingController();
  final yearController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (widget.student != null) {
      nameController.text = widget.student!.name;
      courseController.text = widget.student!.course;
      yearController.text = widget.student!.year;
    }
  }

  void saveStudent() {
    final student = Student(
      name: nameController.text,
      course: courseController.text,
      year: yearController.text,
    );

    Navigator.pop(context, student);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.student == null ? "Add Student" : "Edit Student"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [

            TextField(
              controller: nameController,
              decoration: InputDecoration(labelText: "Student Name"),
            ),

            TextField(
              controller: courseController,
              decoration: InputDecoration(labelText: "Course"),
            ),

            TextField(
              controller: yearController,
              decoration: InputDecoration(labelText: "Year"),
            ),

            SizedBox(height: 20),

            ElevatedButton(
              onPressed: saveStudent,
              child: Text("Save"),
            )

          ],
        ),
      ),
    );
  }
}