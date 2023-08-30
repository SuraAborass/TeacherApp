import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class StudentsClient {
  Future<dynamic> getStudents() async {
    var response = await http.get(Uri.parse(baseLink + studentsByTeacherId));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }

  Future<dynamic> getTeacherStudents() async {
    var response = await http.get(Uri.parse(baseLink + teacherStudents));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }

}