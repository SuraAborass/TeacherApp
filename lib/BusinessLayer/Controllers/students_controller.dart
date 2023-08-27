import 'package:get/get.dart';
import '../../DataAccessLayer/Models/student.dart';
import '../../DataAccessLayer/Repositories/students_repo.dart';

class StudentsController extends GetxController{
  StudentsRepo repo = StudentsRepo();
  List<Student> students = [];
  List<int> studentsIds = [];
  var isAdded = false.obs;
  var loading = false.obs;

  @override
  void onInit() async {
    await getStudents();
    super.onInit();
  }

  Future<void> getStudents() async {
    loading.value = true;
    students = await repo.getStudents();
    update();
    loading.value = false;
  }

  void addStudentId (int studentId){
    if(!studentsIds.contains(studentId))
      {   studentsIds.add(studentId);}

  }

  void toggleAdd() {
    isAdded.value = !isAdded.value;
    update();

  }
}