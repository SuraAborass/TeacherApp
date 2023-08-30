import 'package:get/get.dart';
import 'package:teacher_app/BusinessLayer/Controllers/user_controller.dart';
import '../../Constants/get_routes.dart';
import '../../DataAccessLayer/Clients/box_client.dart';
import '../../main.dart';

class SplashController extends GetxController {
  final BoxClient boxClient = BoxClient();

  Future<void> checkAuth() async {
    bool authed = await boxClient.getAuthState();
    if (authed == true) {
      MyApp.appUserTeacher =
      await boxClient.getAuthedUser();
      Future.delayed(const Duration(seconds: 3))
          .then((value) => Get.offAndToNamed(AppRoutes.homeScreen));
    } else {
      Future.delayed(const Duration(seconds: 3))
          .then((value) => Get.offAndToNamed(AppRoutes.loginScreen));
    }
  }

  @override
  void onInit() async {
    await checkAuth();
    super.onInit();
  }
}

