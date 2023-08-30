import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Bindings/teacher_students_controller.dart';
import '../../../Constants/colors.dart';
import '../../../main.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/page_title.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/Public/teacher_student_item.dart';
import '../../Widgets/Shimmers/student_shimmer.dart';

class TeacherStudentsScreen extends StatelessWidget {
  TeacherStudentsScreen({Key? key}) : super(key: key);
  final TeacherStudentsController teacherStudentsController =
      Get.put(TeacherStudentsController());
  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.white,
        appBar: schoolAppBar(),
        drawer: SchoolDrawer(),
        body: GetBuilder(
          init: teacherStudentsController,
            builder: (context) {
          return teacherStudentsController.loading.value == true
              ? SizedBox(
                  height: Get.height,
                  child: Column(children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: pageTitle("جميع الطلاب"),
                    ),
                    Flexible(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, i) {
                          return const StudentShimmer();
                        },
                      ),
                    )
                  ]),
                )
              : SizedBox(
                  height: Get.height,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: pageTitle("جميع الطلاب"),
                      ),
                      Flexible(
                        child: ListView.builder(
                          itemCount:
                              teacherStudentsController.teacherStudents.length,
                          itemBuilder: (context, i) {
                            return TeacherStudentItem(
                              student:
                                  teacherStudentsController.teacherStudents[i],
                            );
                          },
                        ),
                      )
                    ],
                  ),
                );
        }),
      ),
    );
  }
}
