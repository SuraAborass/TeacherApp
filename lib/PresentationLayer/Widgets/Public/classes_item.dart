import 'package:flutter/material.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/get_routes.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/class_with_classrooms.dart';
import 'package:get/get.dart';

class ClassesItem extends StatelessWidget {
  const ClassesItem({Key? key,required this.classTeacher}) : super(key: key);
  final ClassTeacher classTeacher;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(AppRoutes.classRooms,arguments: [classTeacher]);
      },
      child: Container(
        margin: const EdgeInsets.all(8),
        height: 70,
        width: 360,
        decoration: BoxDecoration(
            color: UIColors.white,
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
            border:
            Border.all(width: 2, color: UIColors.primary)),
        child: Row(
          children: [
            const Expanded(
              flex: 1,
              child: Icon(
                Icons.class_,
                size: 40,
                color: UIColors.purple,
              ),
            ),
            Expanded(
                flex: 3,
                child: ListTile(
                  title: Text(
                    classTeacher.name,
                    style: UITextStyle.bodyNormal.copyWith(
                        color: UIColors.purple, fontSize: 20),
                  ),
                  subtitle: Text(
                    "اضغط لاختيار الشعب التابعة لهذا الصف",
                    style: UITextStyle.bodyNormal.copyWith(
                        fontSize: 16, color: UIColors.normalText),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
