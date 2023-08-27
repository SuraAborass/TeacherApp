import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'BusinessLayer/Bindings/init_bindings.dart';
import 'Constants/get_pages.dart';
import 'DataAccessLayer/Models/user.dart';



void main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  static User? appUserTeacher;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teacher',
      initialBinding: InitBinding(),
      getPages: getPages,
    );
  }
}
