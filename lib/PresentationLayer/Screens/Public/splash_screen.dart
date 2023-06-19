import 'package:flutter/material.dart';
import '../../../BusinessLayer/Controllers/splash_controller.dart';
import '../../../Constants/colors.dart';
import 'package:get/get.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);
final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: UIColors.white,
        body: Center(
          child: Image.asset(
            'assets/images/Group 5.png',
            height: 290,
            width: 345,
          ),
        )
    );
  }
}
