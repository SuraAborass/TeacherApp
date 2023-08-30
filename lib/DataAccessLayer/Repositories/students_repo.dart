import 'dart:convert';
import '../Clients/students_client.dart';
import '../Models/student.dart';


class StudentsRepo {
  StudentsClient client = StudentsClient();
  Future<List<Student>> getStudents() async {
    var response = await client.getStudents();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Student>((json) => Student.fromMap(json))
          .toList();
    }
    return [];
  }

  Future<List<Student>> getTeacherStudents() async {
    var response = await client.getTeacherStudents();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<Student>((json) => Student.fromMap(json))
          .toList();
    }
    return [];
  }
}