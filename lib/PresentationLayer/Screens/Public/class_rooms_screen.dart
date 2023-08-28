import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../BusinessLayer/Controllers/classes_controller.dart';
import '../../../Constants/colors.dart';
import '../../../DataAccessLayer/Models/class_with_classrooms.dart';
import '../../Widgets/Public/class_room_item.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/page_title.dart';
import '../../Widgets/Public/school_appbar.dart';

class ClassRoomsScreen extends StatelessWidget {
   ClassRoomsScreen({Key? key}) : super(key: key);
   final ClassesController classesController = Get.find();
  final ClassTeacher classTeacher = Get.arguments[0];

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
                    pageTitle("الشعب"),
                    Flexible(
                      child: ListView.builder(
                        itemCount: classTeacher.classrooms.length,
                        itemBuilder: (context, i) {
                          return  ClassRoomItem(
                            classroom: classTeacher.classrooms[i],
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
