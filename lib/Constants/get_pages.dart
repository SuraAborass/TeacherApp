import 'package:get/get.dart';
import '../BusinessLayer/Bindings/init_bindings.dart';
import '../PresentationLayer/Screens/Auth/login_screen.dart';
import '../PresentationLayer/Screens/Public/home_screen.dart';
import '../PresentationLayer/Screens/Public/splash_screen.dart';
import 'get_routes.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
      name: AppRoutes.splashScreen,
      page: () =>  SplashScreen(),
      transition: Transition.leftToRightWithFade),
  GetPage(
      name: AppRoutes.loginScreen,
      page: () => LoginScreen(),
      transition: Transition.zoom,
      binding: InitBinding()),
  GetPage(
      name: AppRoutes.homeScreen,
      page: () => HomeScreen(),
      transition: Transition.zoom,
      binding: InitBinding()),

];
