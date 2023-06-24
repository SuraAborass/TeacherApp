import 'package:flutter/material.dart';
import 'package:teacher_app/Constants/colors.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/students_controller.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/student.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/page_title.dart';
import '../../Widgets/Public/school_appbar.dart';
import '../../Widgets/student_item.dart';

class AttendanceScreen extends StatelessWidget {
   AttendanceScreen({Key? key}) : super(key: key);
 Student? student;
final StudentsController studentsController = Get.put(StudentsController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.white,
        appBar: schoolAppBar(),
        drawer: SchoolDrawer(),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.all(30.0),
          child: GetBuilder(
            init: studentsController,
            builder: (context) {
              return MaterialButton(
                height: 56,
                color: UIColors.primary,
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(18.0))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('حفظ',
                        style: UITextStyle.bodyNormal.copyWith(fontSize: 22,color: UIColors.white))
                  ],
                ),
                onPressed: () async {
                  studentsController.addStudentId(student!.id);
                },
              );
            }
          ),
        ),
        body: GetBuilder(
          init: studentsController,
          builder: (context) {
            return SizedBox(
              height: Get.height,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: pageTitle("تسجيل الحضور والغياب"),
                  ),
                  Flexible(
                    child: ListView.builder(
                      itemCount: studentsController.students.length,
                      itemBuilder: (context, i) {
                        return StudentItem(
                          student: studentsController.students[i],
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}
