import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:teacher_app/BusinessLayer/Controllers/user_controller.dart';
import '../../DataAccessLayer/Models/user.dart';
import '../../DataAccessLayer/Repositories/user_repo.dart';
import '../../PresentationLayer/Widgets/Public/snackbars.dart';
import '../../main.dart';

class LoginController extends GetxController{
  var usernameTextController = TextEditingController();
  var passwordTextController = TextEditingController();
  var passwordVisible = false.obs;
  var sending = false.obs;
  final UserController userController = Get.find();
  var repo = UserRepo();

  @override
  void onInit() async {
    super.onInit();
  }

  Future<void> login() async {
    sending.value = true;
    User? user = await repo.login(
        usernameTextController.value.text, passwordTextController.value.text);
    if (user != null) {
      MyApp.appUser = user;
      await userController.saveAuthState(user);
      SnackBars.showSuccess("مرحباً ${MyApp.appUser!.phone}");

    } else {
      SnackBars.showError("الرجاء التأكد من البيانات المدخلة");
    }
    sending.value = false;
  }

  void togglePasswordVisible() {
    passwordVisible.value = !passwordVisible.value;
  }
}
