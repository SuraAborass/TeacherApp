import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:teacher_app/BusinessLayer/Controllers/user_controller.dart';
import '../../Constants/get_routes.dart';
import '../../DataAccessLayer/Clients/box_client.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../../DataAccessLayer/Repositories/user_repo.dart';
import '../../PresentationLayer/Widgets/Public/snackbars.dart';
import '../../main.dart';

class AuthController extends GetxController{
  UserRepo userRepo = UserRepo();
  BoxClient client = BoxClient();
  TextEditingController usernameTextController = TextEditingController();
  TextEditingController passwordTextController = TextEditingController();
  var passwordVisible = false.obs;
  var sending = false.obs;


  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> login() async {
    sending.value = true;
    if (usernameTextController.value.text.isNotEmpty &&
        passwordTextController.value.text.isNotEmpty) {
      User? user = await userRepo.login(
          usernameTextController.value.text, passwordTextController.value.text);
      if (user != null) {
        MyApp.appUserTeacher = user;
        await client.setAuthedUser(user);
        SnackBars.showSuccess("${'مرحباً'}${user.name}");
        Get.toNamed(AppRoutes.homeScreen);
      } else {
        SnackBars.showWarning('بياناتك لاتتطابق مع سجلاتنا');
      }
    } else {
      SnackBars.showWarning('املأ الحقول المطلوبة');
    }
    sending.value = false;
  }

  Future<void> logout() async {
    await client.removeUserData();
    MyApp.appUserTeacher = null;
    Get.toNamed(AppRoutes.loginScreen);
  }

  void togglePasswordVisible() {
    passwordVisible.value = !passwordVisible.value;
  }
}
