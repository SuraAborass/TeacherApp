import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:teacher_app/Constants/get_routes.dart';
import '../../../BusinessLayer/Controllers/classes_controller.dart';
import '../../../Constants/colors.dart';
import '../../Widgets/Public/classes_item.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/page_title.dart';
import '../../Widgets/Public/school_appbar.dart';

class ClassesScreen extends StatelessWidget {
   ClassesScreen({Key? key}) : super(key: key);
final ClassesController classesController = Get.put(ClassesController());

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.white,
        appBar: schoolAppBar(),
        drawer: SchoolDrawer(),
        body: GetBuilder(
          init: classesController,
          builder: (context) {
            return SizedBox(
              height: Get.height,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    pageTitle("الصفوف"),
                    Flexible(
                      child: ListView.builder(
                        itemCount: classesController.classes.length,
                        itemBuilder: (context, i) {
                          return ClassesItem(
                            classTeacher: classesController.classes[i],
                          );
                        },
                      ),
                    )
                  ],
                ),
              ),
            );
          }
        ),
      ),
    );
  }
}
