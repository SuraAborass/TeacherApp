import 'dart:convert';
import '../Clients/classes_with_classrooms_client.dart';
import '../Models/class_with_classrooms.dart';

class ClassesRepo {
  ClassesClient client = ClassesClient();
  Future<List<ClassTeacher>> getClasses() async {
    var response = await client.getClasses();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<ClassTeacher>((json) => ClassTeacher.fromMap(json))
          .toList();
    }
    return [];
  }
}