import 'package:flutter/material.dart';
import 'package:teacher_app/Constants/colors.dart';
import 'package:get/get.dart';
import 'package:teacher_app/Constants/get_routes.dart';
import 'package:teacher_app/main.dart';
import '../../../Constants/text_styles.dart';
import '../../Widgets/HomeWidgets/create_homework.dart';
import '../../Widgets/HomeWidgets/examResults.dart';
import '../../Widgets/HomeWidgets/send_alerts.dart';
import '../../Widgets/HomeWidgets/attendance.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/HomeWidgets/students.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        appBar: schoolAppBar(),
        drawer: SchoolDrawer(),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Stack(
                children: [
                  Container(
                    height: Get.height,
                    width: Get.width,
                    decoration: const BoxDecoration(
                      color: UIColors.purple,
                    ),
                  ),
                  Positioned(
                    top: 80,
                    bottom: 0,
                    child: Container(
                      width: Get.width,
                      decoration: const BoxDecoration(
                        color: UIColors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(45),
                            topRight: Radius.circular(45)),
                      ),
                    ),
                  ),
                   Positioned(
                      top: 20,
                      right: 110,
                      child: CircleAvatar(
                        radius: 60,
                        backgroundImage:
                            NetworkImage(MyApp.appUserTeacher!.image),
                      )),
                  Positioned(
                    top: 150,
                    //right: 130,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          MyApp.appUserTeacher!.name,
                          style: UITextStyle.titleBold
                              .copyWith(color: UIColors.purple, fontSize: 22),
                        ),
                        const SizedBox(
                          height: 2,
                        ),
                        Text(
                          MyApp.appUserTeacher!.subject,
                          style: UITextStyle.bodyNormal.copyWith(
                              fontSize: 18, color: UIColors.normalText),
                        ),
                        const SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.only(left: 15.0,right: 15.0),
                          child: Container(
                            //padding: const EdgeInsets.all(10),
                            height: 48,
                            width: 330,
                            decoration: const BoxDecoration(
                                color: UIColors.primary,
                                borderRadius: BorderRadius.all(
                                  Radius.circular(15),
                                )),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "الشعبة الحالية : الصف الأول شعبة ثانية",
                                  style: UITextStyle.bodyNormal.copyWith(
                                      fontSize: 16, color: UIColors.white),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                IconButton(
                                    onPressed: () {
                                      Get.toNamed(AppRoutes.classes);
                                    },
                                    icon: const Icon(
                                      Icons.restart_alt,
                                      size: 30,
                                      color: UIColors.white,
                                    ))
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: SizedBox(
                    child: ListView(
                      children: const [
                        StudentsContainer(),
                        SizedBox(
                          height: 10,
                        ),
                        Attendance(),
                        SizedBox(
                          height: 10,
                        ),
                        CreateHomeWorks(),
                        SizedBox(
                          height: 10,
                        ),
                        SendAlerts(),
                        SizedBox(
                          height: 10,
                        ),
                        ExamResults()
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
