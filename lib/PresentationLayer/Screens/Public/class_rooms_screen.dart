import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../Widgets/Public/class_room_item.dart';
import '../../Widgets/Public/drawer.dart';
import '../../Widgets/Public/page_title.dart';
import '../../Widgets/Public/school_appbar.dart';

class ClassRoomsScreen extends StatelessWidget {
  const ClassRoomsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        backgroundColor: UIColors.white,
        appBar: schoolAppBar(),
        drawer: SchoolDrawer(),
        body: SizedBox(
          height: Get.height,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                pageTitle("الشعب"),
                Flexible(
                  child: ListView.builder(
                    itemCount: 10,
                    itemBuilder: (context, i) {
                      return const ClassRoomItem(
                        //student: studentsController.students[i],
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
