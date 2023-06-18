import 'package:get/get.dart';
import 'package:teacher_app/BusinessLayer/Controllers/user_controller.dart';
import '../../Constants/get_routes.dart';
import '../../main.dart';

class SplashController extends GetxController {
  UserController userController = Get.find();

  @override
  void onReady() {
      Future.delayed(const Duration(seconds: 3))
          .then((value) => Get.toNamed(AppRoutes.loginScreen));
    super.onReady();
  }
}

