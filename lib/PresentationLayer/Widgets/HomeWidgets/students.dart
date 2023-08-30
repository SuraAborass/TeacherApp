import 'package:flutter/material.dart';
import 'package:teacher_app/Constants/get_routes.dart';
import '../../../Constants/colors.dart';
import '../../../Constants/text_styles.dart';
import 'package:get/get.dart';

class StudentsContainer extends StatelessWidget {
  const StudentsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.toNamed(AppRoutes.teacherStudents);
      },
      child: Container(
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
                Icons.person_add_alt_1,
                size: 40,
                color: UIColors.purple,
              ),
            ),
            Expanded(
                flex: 3,
                child: ListTile(
                  title: Text(
                    "الطلاب ",
                    style: UITextStyle.bodyNormal.copyWith(
                        color: UIColors.purple, fontSize: 20),
                  ),
                  subtitle: Text(
                    "إضافة طلاب إلى الشعبة",
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
