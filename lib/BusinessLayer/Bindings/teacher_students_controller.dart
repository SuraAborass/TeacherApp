import 'package:get/get.dart';
import '../../DataAccessLayer/Models/student.dart';
import '../../DataAccessLayer/Repositories/students_repo.dart';

class TeacherStudentsController extends GetxController{
  StudentsRepo repo = StudentsRepo();
  List<Student> teacherStudents = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getTeacherStudents();
    super.onInit();
  }


  Future<void> getTeacherStudents() async {
    loading.value = true;
    teacherStudents = await repo.getTeacherStudents();
    update();
    loading.value = false;
  }
}