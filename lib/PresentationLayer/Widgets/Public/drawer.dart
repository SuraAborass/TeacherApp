import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/user_controller.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../main.dart';

class SchoolDrawer extends StatelessWidget {
  SchoolDrawer({Key? key}) : super(key: key);
final UserController userController = Get.find();
  @override
  Widget build(BuildContext context) {
    return  Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(decoration: const BoxDecoration(color: UIColors.gray),
              accountName: Text(MyApp.appUser != null ? MyApp.appUser!.name : "اسم الأم",
                  style: UITextStyle.titleBold.copyWith(color: UIColors.primary)),
              accountEmail:  Text( MyApp.appUser != null ? MyApp.appUser!.username : "",
                  style:  UITextStyle.bodyNormal.copyWith(color: UIColors.lightBlack)),
            currentAccountPicture: const CircleAvatar(
             // backgroundImage: NetworkImage(MyApp.appUser!.avatar),
              backgroundColor: UIColors.primary,
            ),
          ),
          if (MyApp.appUser != null)
            ListTile(
              onTap: () async {
                await userController.logout();
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
