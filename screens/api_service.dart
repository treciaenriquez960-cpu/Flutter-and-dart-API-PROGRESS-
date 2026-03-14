import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/student.dart';
import 'models/student.dart';

class ApiService {

  static const String baseUrl = "https://example-api.com/students";

  static Future<List<Student>> getStudents() async {
    final response = await http.get(Uri.parse(baseUrl));

    if (response.statusCode == 200) {
      List data = jsonDecode(response.body);
      return data.map((e) => Student.fromJson(e)).toList();
    } else {
      throw Exception("Failed to load students");
    }
  }

  static Future<void> addStudent(Student student) async {
    await http.post(
      Uri.parse(baseUrl),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(student.toJson()),
    );
  }

  static Future<void> updateStudent(int id, Student student) async {
    await http.put(
      Uri.parse("$baseUrl/$id"),
      headers: {"Content-Type": "application/json"},
      body: jsonEncode(student.toJson()),
    );
  }

  static Future<void> deleteStudent(int id) async {
    await http.delete(Uri.parse("$baseUrl/$id"));
  }
}