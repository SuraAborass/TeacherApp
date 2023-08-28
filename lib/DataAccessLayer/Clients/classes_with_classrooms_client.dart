import 'package:http/http.dart' as http;
import '../../Constants/links.dart';

class ClassesClient {
  Future<dynamic> getClasses() async {
    var response = await http.get(Uri.parse(baseLink + classesWithClassrooms));
    print(response.body);
    if (response.statusCode == 200) {
      return response.body;
    } else {
      return "";
    }
  }
}