import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/auth_controller.dart';
import '../../../BusinessLayer/Controllers/user_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../main.dart';

class SchoolDrawer extends StatelessWidget {
  SchoolDrawer({Key? key}) : super(key: key);
final AuthController authController = Get.put(AuthController());
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(decoration: const BoxDecoration(color: UIColors.gray),
              accountName: Text(MyApp.appUserTeacher != null ? MyApp.appUserTeacher!.name : "اسم الأم",
                  style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
              accountEmail:  Text( MyApp.appUserTeacher != null ? MyApp.appUserTeacher!.phone : "",
                  style:  UITextStyle.bodyNormal.copyWith(color: UIColors.lightBlack)),
            currentAccountPicture:  CircleAvatar(
              backgroundImage: NetworkImage(MyApp.appUserTeacher!.image),
              //backgroundColor: UIColors.primary,
            ),
          ),
          if (MyApp.appUserTeacher != null)
            ListTile(
              onTap: () async {
                await authController.logout();
              },
              leading: const Icon(
                Icons.logout,
                color: UIColors.primary,
                size: 30,
              ),
              title: Text(
                "logout",
                style:  UITextStyle.titleBold.copyWith(fontSize: 20,color: UIColors.primary),
              ),
            ),
        ],
      ),
    );
  }
}
