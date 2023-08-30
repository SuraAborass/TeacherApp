import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import '../../../DataAccessLayer/Models/student.dart';

class TeacherStudentItem extends StatelessWidget {
  const TeacherStudentItem({Key? key,required this.student}) : super(key: key);
final Student student;
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 8),
        width: Get.width,
        height: 70,
        decoration: const BoxDecoration(
          color: UIColors.student,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children:  [
            Expanded(
                flex: 1,
                child: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(student.image),
                  // backgroundColor: UIColors.circleAvatarBackground,
                )
            ),
            Expanded(
                flex: 2,
                child: ListTile(
                  title: Text(student.firstName+"-"+student.secondName,
                      style: UITextStyle.bodyNormal.copyWith(color: UIColors.pageTitle,fontSize: 18)),
                  subtitle: Text(student.grade + "-"+student.classroom,
                      style: UITextStyle.bodyNormal.copyWith(color: UIColors.pageTitle,fontSize: 18)),
                )),
          ],
        ));
  }
}
