import 'package:get/get.dart';

import '../../DataAccessLayer/Models/class_with_classrooms.dart';
import '../../DataAccessLayer/Repositories/classes_with_classrooms_repo.dart';

class ClassesController extends GetxController{
  ClassesRepo repo = ClassesRepo();
  List<ClassTeacher> classes = [];

  var loading = false.obs;

  @override
  void onInit() async {
    await getClasses();
    super.onInit();
  }

  Future<void> getClasses() async {
    loading.value = true;
    classes = await repo.getClasses();
    update();
    loading.value = false;
  }

}